class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :title
      #column should not be blank
      #foreign_key: true indicates to the database that it's a special column that is connected to a primary key
      t.references :subject, null: false, foreign_key: true
      

      t.timestamps
    end
  end
end
