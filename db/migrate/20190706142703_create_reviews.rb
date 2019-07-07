class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :partner
      t.belongs_to :client
      t.integer :starts
      t.text :review

      t.timestamps
    end
  end
end
