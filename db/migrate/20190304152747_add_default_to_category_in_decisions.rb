class AddDefaultToCategoryInDecisions < ActiveRecord::Migration[5.2]
  def change
    change_column_default :decisions, :category, 0
  end
end
