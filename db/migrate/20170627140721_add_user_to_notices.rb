class AddUserToNotices < ActiveRecord::Migration[5.0]
  def change
    add_reference :notices, :user, foreign_key: true
  end
end
