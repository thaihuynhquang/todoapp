class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :name, :null => false
      #Ex:- :null => false
      t.text :content, :null => false
      #Ex:- :null => false
      t.string :deleted, :null => true
      #Ex:- :null => false

      t.timestamps :null => false
      #Ex:- :null => false
    end
  end
end
