class CreateExamplesReasons < ActiveRecord::Migration
  def change
    create_table :examples_reasons, :id => false do |t|
      t.integer :example_id
      t.integer :reason_id
    end
  end
end
