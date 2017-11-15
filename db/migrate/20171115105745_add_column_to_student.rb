class AddColumnToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :imageable_id, :integer
    add_column :students, :imageable_type, :string
  end
end
