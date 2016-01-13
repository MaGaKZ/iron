class AddAttachmentPhotoToProducers < ActiveRecord::Migration
  def self.up
    change_table :producers do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :producers, :photo
  end
end
