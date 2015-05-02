class CreateChainubChannels < ActiveRecord::Migration
  def change
    create_table :chainub_channels do |t|
      t.string :api_key
      t.string :api_secret
      t.string :name
      t.integer :type
      t.string :domain

      t.timestamps
    end
  end
end
