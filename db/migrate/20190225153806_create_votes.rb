class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.integer :result
      t.integer :vote_as
      t.references :user, foreign_key: true
      t.references :decision, foreign_key: true

      t.timestamps
    end
  end
end
