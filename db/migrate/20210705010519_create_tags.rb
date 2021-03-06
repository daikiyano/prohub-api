class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :name, null: false
      t.string :icon_url, null: false
      t.integer :followers_count
      t.integer :items_count

      t.timestamps
    end
  end
end
