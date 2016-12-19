module AttachmentHelper
  def attachment_icon(attachment)
    attachment.is_image? ? attachment.attachment.url(:medium) :
      attachment.to_default_image
  end

  def attachment_preview(attachment)
    capture { image_tag attachment_icon(attachment), class: 'file_icon' }
  end

  def file_name(attachment)
    attachment.attachment_file_name.truncate(20)
  end

  def current_translations # copied from http://stackoverflow.com/a/10610347/1796645
    @translations ||= I18n.backend.send(:translations)
    @translations[I18n.locale].with_indifferent_access
  end
end
