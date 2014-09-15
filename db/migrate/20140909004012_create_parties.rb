class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|

      t.string :type

			t.string :name
			t.string :phone
			t.string :webpage
			t.string :sex
			t.date :birthday

      t.timestamps
    end
  end
end
