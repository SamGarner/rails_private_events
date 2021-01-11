class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.date :date
      t.string :location
      t.bigint :creator_id

      t.timestamps
    end
  end
end
