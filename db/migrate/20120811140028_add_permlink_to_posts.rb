class AddPermlinkToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :permlink, :string
  end
end
