class AddDateToExample < ActiveRecord::Migration
  def change
    add_column :examples, :published_at, :date
  end
end
