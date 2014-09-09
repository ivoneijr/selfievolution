class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :party, index: true

	    t.string :street
			t.string :number
			t.string :complement
			t.string :state
			t.string :city
			t.string :neighborhood
			t.string :country

      t.timestamps
    end
  end
end
