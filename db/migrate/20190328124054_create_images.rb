class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :photo_url
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
