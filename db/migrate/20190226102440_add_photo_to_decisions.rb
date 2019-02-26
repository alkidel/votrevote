class AddPhotoToDecisions < ActiveRecord::Migration[5.2]
  def change
    add_column :decisions, :photo, :string
  end
end
