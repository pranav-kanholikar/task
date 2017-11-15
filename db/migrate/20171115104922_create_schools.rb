class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :sname
      t.string :principle

      t.timestamps
    end
  end
end
