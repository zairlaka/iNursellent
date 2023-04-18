class CreateExperience < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.date :from
      t.date :to
      t.float :points

      t.references :expertise
      t.references :health_institute
      t.references :user

      t.timestamps
    end
  end
end
