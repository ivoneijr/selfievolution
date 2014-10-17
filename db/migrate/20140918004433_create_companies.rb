class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |c|
      c.string :cnpj

      c.references :party, index: true

      c.timestamps
    end
  end
end
