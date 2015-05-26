class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :original
      t.string :shortened
      t.string :key

      t.timestamps null: false
    end
  end
end
