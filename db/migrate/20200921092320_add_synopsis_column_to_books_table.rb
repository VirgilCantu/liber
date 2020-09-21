class AddSynopsisColumnToBooksTable < ActiveRecord::Migration
  def change
    add_column :books, :synopsis, :string
  end
end
