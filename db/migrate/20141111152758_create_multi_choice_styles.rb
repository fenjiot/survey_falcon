class CreateMultiChoiceStyles < ActiveRecord::Migration
  def change
    create_table :multi_choice_styles do |t|
      t.integer :multi_choice_option_id

      t.timestamps null:false
    end
  end
end
