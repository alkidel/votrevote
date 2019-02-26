class ChangeDefaultResultForVotes < ActiveRecord::Migration[5.2]
  def change
    change_column :decisions, :result, :integer, default: 0
  end
end
