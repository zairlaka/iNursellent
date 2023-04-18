class CreateExpertise < ActiveRecord::Migration[7.0]
  def change
    create_table :expertises do |t|
      t.string :name
      t.float :points

      t.timestamps
    end
  end
end
