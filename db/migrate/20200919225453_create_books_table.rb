class CreateBooksTable < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.integer :publishing_date
      t.string :condition
      t.string :type
      t.integer :owner_id
    end
  end
end
