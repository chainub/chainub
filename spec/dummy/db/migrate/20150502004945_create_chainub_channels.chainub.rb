# This migration comes from chainub (originally 20150502004918)
class CreateChainubChannels < ActiveRecord::Migration
  def change
    create_table :chainub_channels do |t|
      t.string :secret_key
      t.string :name
      t.integer :channel_type
      t.string :domain

      t.timestamps
    end
  end
end
