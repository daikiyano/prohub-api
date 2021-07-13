class CreateSiteTags < ActiveRecord::Migration[6.0]
  def change
    create_table :site_tags do |t|
      t.references :site, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
    add_index :site_tags, [:site_id, :tag_id], unique: true
  end
end
