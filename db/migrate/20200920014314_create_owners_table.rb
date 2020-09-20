class CreateOwnersTable < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :username  
      t.string :password_digest
      t.string :name
      t.string :location
    end
  end
end
