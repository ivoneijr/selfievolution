class CreatePupils < ActiveRecord::Migration
  def change
    create_table :pupils do |t|
      t.references :user, index: true

      #altura
      t.decimal :weight 
      #peso
      t.decimal :height


      t.timestamps
    end
  end
end
