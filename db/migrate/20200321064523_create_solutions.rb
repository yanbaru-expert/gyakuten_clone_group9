class CreateSolutions < ActiveRecord::Migration[6.0]
  def change
    create_table :solutions do |t|
      t.string :content, null: false
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
