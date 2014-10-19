class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :facebook
      t.string :twitter
      
      t.references :party, index: true

      t.timestamps
    end
  end
end
