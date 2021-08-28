class CreateSiteComments < ActiveRecord::Migration[6.0]
  def change
    create_table :site_comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :site, null: false, foreign_key: true
      t.text :comment
      t.integer :review

      t.timestamps
    end
  end
end
