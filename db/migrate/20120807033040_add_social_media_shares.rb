class AddSocialMediaShares < ActiveRecord::Migration
  def up
    add_column :examples, :twitter_shares, :integer, :null => false, :default => 0
    add_column :examples, :facebook_shares, :integer, :null => false, :default => 0
  end

  def down
    remove_column :examples, :facebook_shares
    remove_column :examples, :twitter_shares
  end
end
