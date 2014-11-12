class CreateTextAnswers < ActiveRecord::Migration
  def change
    create_table :text_answers do |t|
      t.string :body, null: false

      t.timestamps null: false
    end
  end
end
