class ChangeColumnDefaultVotes < ActiveRecord::Migration
  def change
  change_column :posts, :nov, :integer, :default => 0  
  end
end
