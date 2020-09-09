class CreateShussekis < ActiveRecord::Migration[5.2]
  def change
    create_table :shussekis do |t|
      t.integer :number, null: false

      t.timestamps
    end
  end
end
