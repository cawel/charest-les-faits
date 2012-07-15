class AddApprovedFlagToExamples < ActiveRecord::Migration
  def change
    add_column :examples, :approved, :boolean
  end
end
