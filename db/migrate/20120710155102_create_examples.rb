class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.string :headline
      t.string :link
      t.text :excerpt

      t.timestamps
    end
  end
end
