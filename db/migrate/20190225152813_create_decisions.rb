class CreateDecisions < ActiveRecord::Migration[5.2]
  def change
    create_table :decisions do |t|
      t.string :title
      t.string :category
      t.text :description
      t.integer :result
      t.text :minutes
      t.date :council_date

      t.timestamps
    end
  end
end
