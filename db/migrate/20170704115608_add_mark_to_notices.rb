class AddMarkToNotices < ActiveRecord::Migration[5.0]
  def change
    add_column :notices, :mark, :integer
  end
end
