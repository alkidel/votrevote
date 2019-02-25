class AddTownToDecisions < ActiveRecord::Migration[5.2]
  def change
    add_reference :decisions, :town, foreign_key: true
  end
end
