class CreateGyms < ActiveRecord::Migration
  def change
    create_table :gyms do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end