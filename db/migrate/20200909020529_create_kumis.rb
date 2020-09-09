class CreateKumis < ActiveRecord::Migration[5.2]
  def change
    create_table :kumis do |t|
      t.integer :number, null: false

      t.timestamps
    end
  end
end
