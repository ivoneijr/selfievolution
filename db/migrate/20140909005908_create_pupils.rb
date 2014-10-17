class CreatePupils < ActiveRecord::Migration
  def change
    create_table :pupils do |p|

      p.references :user, index: true
      p.references :coach, index: true

      p.timestamps
    end
  end
end
