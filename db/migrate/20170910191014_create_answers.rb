class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :answer, null: false

      t.belongs_to :user, index: true, foreign_key: true, null: true
      t.belongs_to :question, index: true, foreign_key: true, null: true
    end
  end
end
