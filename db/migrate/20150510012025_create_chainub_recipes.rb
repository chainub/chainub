class CreateChainubRecipes < ActiveRecord::Migration
  def change
    create_table :chainub_recipes do |t|
      t.integer :trigger_channel_id
      t.integer :action_channel_id
      t.integer :user_id

      t.timestamps
    end
  end
end
