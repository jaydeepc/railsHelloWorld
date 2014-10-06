class CreateSpikePages < ActiveRecord::Migration
  def change
    create_table :spike_pages do |t|

      t.timestamps
    end
  end
end
