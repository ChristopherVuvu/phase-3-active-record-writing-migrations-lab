class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
  end
  end
end

class AddGradeAndBirthdateToStudents < ActiveRecord::Migration[6.1]
  def change
      add_column :students, :grade, :integer
      add_column :students, :birthdate, :string
  end
end

class ChangeDatatypeForBirthdate < ActiveRecord::Migration[6.1]
  def change
      change_column :students, :birthdate, :datetime
  end
end