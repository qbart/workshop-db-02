class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.belongs_to :category, index: true, foreign_key: true, null: true
    end
  end
end
