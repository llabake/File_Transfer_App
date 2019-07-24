class Document < ApplicationRecord
  belongs_to :user

  has_many_attached :files

  validates :files, presence: true
  validates :name, uniqueness: true

  validate :file_validation

  def file_validation
    if files.attached?
      files.each do |file|
        if file.blob.byte_size > 1000000
          file.purge
          errors[:base] << I18n.t("file_size")
        elsif !file.blob.content_type.starts_with?("image/")
          file.purge
          errors[:base] << I18n.t("file_format")
        end
      end
    end
  end
end
