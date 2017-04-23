class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.references :user, foreign_key: true
      t.string :logo
      t.string :site_url
      t.string :email
      t.string :office_location
      t.text :about, default: ''
      t.integer :status, default: 0, null: false
      t.integer :views, default: 0, null: false
      t.boolean :commentable, default: true
      t.string :slug, null: false

      t.timestamps
    end

    add_index :companies, :slug, unique: true
  end
end
