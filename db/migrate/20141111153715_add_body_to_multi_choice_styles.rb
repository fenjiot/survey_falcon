class AddBodyToMultiChoiceStyles < ActiveRecord::Migration
  def change
    add_column :multi_choice_styles, :body, :string, null: false
  end
end
