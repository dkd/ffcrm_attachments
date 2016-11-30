class AddDescriptionToAttachments < ActiveRecord::Migration
  def self.up
    add_column :attachments, :description, :text, default: nil
  end

  def self.down
    remove_column :attachments, :description
  end
end
