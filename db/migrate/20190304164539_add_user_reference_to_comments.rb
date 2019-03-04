class AddUserReferenceToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :user, index: true
  end
end
