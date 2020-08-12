class CreateServercenters < ActiveRecord::Migration[6.0]
  def change
    create_table :servercenters do |t|
      t.string :code, null: false
      t.integer :server_available
      t.text :servers_capacity
      t.belongs_to :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
