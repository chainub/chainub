# This migration comes from chainub (originally 20150502010535)
class CreateChainubChannels < ActiveRecord::Migration
  def change
    create_table :chainub_channels do |t|
      t.string :api_key
      t.string :api_secret
      t.string :name
      t.integer :user_id
      t.integer :channel_type
      t.string :url

      t.timestamps
    end
  end
end
