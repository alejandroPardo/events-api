class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
