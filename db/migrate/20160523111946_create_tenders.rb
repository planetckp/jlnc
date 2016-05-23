class CreateTenders < ActiveRecord::Migration
  def change
    create_table :tenders do |t|
      t.text :tender_details
      t.date :tender_publish_date
      t.date :tender_due_date

      t.timestamps null: false
    end
  end
end
