class AddPostToNotices < ActiveRecord::Migration[5.0]
  def change
    add_reference :notices, :post, foreign_key: true
  end
end
