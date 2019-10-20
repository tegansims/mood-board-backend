class CreateEmotions < ActiveRecord::Migration[6.0]
  def change
    create_table :emotions do |t|
      t.decimal :angry
      t.decimal :happy
      t.decimal :excited
      t.decimal :fear
      t.decimal :sad
      t.decimal :bored
      t.references :entry, null: false, foreign_key: true
    end
  end
end
