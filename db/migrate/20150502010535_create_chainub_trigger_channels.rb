class CreateChainubTriggerChannels < ActiveRecord::Migration
  def change
    create_table :chainub_trigger_channels do |t|
      t.string :api_key
      t.string :api_secret
      t.string :name
      t.text :description
      t.integer :user_id
      t.string :url

      t.timestamps
    end
    add_index :chainub_trigger_channels, :api_key,     unique: true
    add_index :chainub_trigger_channels, :name
  end
end
