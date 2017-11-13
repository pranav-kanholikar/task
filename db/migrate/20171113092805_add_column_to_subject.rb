class AddColumnToSubject < ActiveRecord::Migration[5.1]
  def change
    add_column :subjects, :student_id, :integer
  end
end
