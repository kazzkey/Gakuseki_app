class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :first_name_furigana, null: false
      t.string :last_name_furigana, null: false
      t.references :grade, foreign_key: true
      t.references :kumi, foreign_key: true
      t.references :shusseki, foreign_key: true

      t.timestamps
    end
  end
end
