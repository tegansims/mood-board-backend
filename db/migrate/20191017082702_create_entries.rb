class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.string :message
      t.string :emotions_hash
      t.string :colours
      t.boolean :public

      t.timestamps
    end
  end
end
