class AddDefaultToVotes < ActiveRecord::Migration[5.2]
  def change
    change_column :votes, :result, :integer, default: 1
  end
end
