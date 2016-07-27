class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :emp_firstname
      t.string :string
      t.string :emp_lastname
      t.string :string
      t.string :email
      t.string :string

      t.timestamps
    end
  end
end
