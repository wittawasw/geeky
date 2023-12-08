class CreateWriters < ActiveRecord::Migration[7.1]
  def change
    create_table :writers do |t|
      t.string :name
      t.integer :age

      t.timestamps
      # created_at
      # updated_at
    end
  end
end
