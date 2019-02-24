class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.references :value, foreign_key: true
      t.references :color, foreign_key: true

      t.timestamps
    end
  end
end
