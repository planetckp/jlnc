class AddAttachmentDocumentToTenders < ActiveRecord::Migration
  def self.up
    change_table :tenders do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :tenders, :document
  end
end
