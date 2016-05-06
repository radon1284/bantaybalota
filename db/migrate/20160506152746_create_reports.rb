class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.references :user, index: true
      t.string :precinct_number
      t.string :ballot_number
      t.string :vote_receipt_number
      t.string :bei_name
      t.integer :voted_president
      t.integer :pcos_result_president
      t.integer :voted_vice_president
      t.integer :pcos_result_vice_president

      t.timestamps
    end
  end
end
