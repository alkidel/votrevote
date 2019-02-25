class AddDefaultToDecisions < ActiveRecord::Migration[5.2]
  def change
    change_column :decisions, :result, :integer, default: 1
  end
end
