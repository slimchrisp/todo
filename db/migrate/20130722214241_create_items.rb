class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :list
      t.string :title
      t.boolean :completed

      t.timestamps
    end
  end
end
