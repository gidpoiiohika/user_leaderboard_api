class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, default: ""
      t.string :country, null: false, default: "", index: true
      t.integer :point, null: false, default: 150, index: true

      t.timestamps
    end
  end
end
