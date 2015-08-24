class CreateProjects < ActiveRecord::Migration
  def change
    create_table(:projects) do |t|
      t.column(:description, :string)
      t.column(:due_date, :datetime)
      t.column(:name, :string)

      t.timestamps
    end
  end
end
