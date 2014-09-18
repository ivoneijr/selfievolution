class CreateCoach < ActiveRecord::Migration
  def change
    create_table :coaches do |c|

      c.references :user, index: true

      c.timestamps

    end
  end
end
