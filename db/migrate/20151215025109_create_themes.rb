class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string  :title
      t.text    :info
      t.text    :keywords
      t.integer :percentage, default: 25
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
