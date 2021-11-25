class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees, force: true do |t|
      t.string :last_name
      t.string :first_name
      t.string :emp_code
      t.string :name

      # BTDM に必要なカラムを追加する
      t.integer :bitemporal_id
      t.datetime :valid_from
      t.datetime :valid_to
      t.datetime :transaction_from
      t.datetime :transaction_to
    end
  end
end
