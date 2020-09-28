class CreateNames < ActiveRecord::Migration[6.0]
  def change
    create_table :names do |t|
      t.string :name
      t.string :gender, limit: 1
      t.integer :amount
      t.integer :rank
      t.integer :year
    end

    add_index :names, [:name, :gender, :year], unique: true
  end
end
