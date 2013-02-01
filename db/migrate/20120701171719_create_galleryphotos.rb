class CreateGalleryphotos < ActiveRecord::Migration
  def change
    create_table :galleryphotos do |t|
      t.string :photo_file_name
      t.string :photo_content_type
      t.datetime :photo_updated_at
      t.integer :photo_file_size
      t.text :photo_description
      t.integer :gallery_id

      t.timestamps
    end
  end
end
