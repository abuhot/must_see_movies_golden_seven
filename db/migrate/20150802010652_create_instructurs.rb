class CreateInstructurs < ActiveRecord::Migration
  def change
    create_table :instructurs do |t|
      t.string :first_name

      t.timestamps null: false
    end
  end
end
