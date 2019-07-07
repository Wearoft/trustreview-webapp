class CreatePartners < ActiveRecord::Migration[6.0]
  def change
    create_table :partners do |t|
      t.belongs_to :sector
      t.string :name
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :province
      t.string :phone

      t.timestamps
    end
  end
end
