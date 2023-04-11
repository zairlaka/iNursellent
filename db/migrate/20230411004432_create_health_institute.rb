class CreateHealthInstitute < ActiveRecord::Migration[7.0]
  def change
    create_table :health_institutes do |t|
      t.string :name
      t.string :address
      t.string :country

      t.timestamps
    end
  end
end
