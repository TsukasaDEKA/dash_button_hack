class CreateRefrigeratorEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :refrigerator_events do |t|

      t.timestamps
    end
  end
end
