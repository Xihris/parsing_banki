class CreateParsings < ActiveRecord::Migration[5.0]
  def change
    create_table :parsings do |t|

      t.timestamps
    end
  end
end
