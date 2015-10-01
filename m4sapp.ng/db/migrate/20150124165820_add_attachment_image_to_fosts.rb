class AddAttachmentImageToFosts < ActiveRecord::Migration
  def self.up
    change_table :fosts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :fosts, :image
  end
end
