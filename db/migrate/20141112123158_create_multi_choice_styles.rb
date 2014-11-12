class CreateMultiChoiceStyles < ActiveRecord::Migration
  def change
    create_table :multi_choice_styles do |t|
      t.text :body, null: false

      t.timestamps null: false
    end
  end
end
