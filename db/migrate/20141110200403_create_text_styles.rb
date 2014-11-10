class CreateTextStyles < ActiveRecord::Migration
  def change
    create_table :text_styles do |t|
      t.text :body, presence: true, null: false

      t.timestamps presence: true, null: false
    end
  end
end
