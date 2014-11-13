class RemoveBodyColumnFromMultiChoiceAnswer < ActiveRecord::Migration
  def change
    remove_column :multi_choice_answers, :body
  end
end
