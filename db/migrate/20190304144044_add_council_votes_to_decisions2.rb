class AddCouncilVotesToDecisions2 < ActiveRecord::Migration[5.2]
  def change
    add_column :decisions, :accepted_votes, :integer, default: 0
    add_column :decisions, :rejected_votes, :integer, default: 0
    add_column :decisions, :deferred_votes, :integer, default: 0
  end
end
