class CreateArchitects < ActiveRecord::Migration[5.0]
  def change
    create_table :architects do |t|
      t.references :user, foreign_key: true, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :about
      t.string :site_url
      t.integer :status, default: 0, null: false 
      t.references :alma_mater, foreign_key: true
      t.integer :graduation_year
      t.references :company, foreign_key: true
      t.string :company_name
      t.integer :views, default: 0, null: false
      t.string :slug, null: false
      t.boolean :show_contests, default: true
      t.boolean :commentable, default: true

      t.timestamps
    end

    add_index :architects, :slug, unique: true
  end
end
