class AddColumnToLecture < ActiveRecord::Migration[5.1]
  def change
     
    add_column :lectures, :cached_votes_up, :integer, :default => 0
    add_column :lectures, :cached_votes_down, :integer, :default => 0
    add_column :lectures, :cached_votes_score, :integer, :default => 0
    add_index  :lectures, :cached_votes_up
    add_index  :lectures, :cached_votes_down
    add_index  :lectures, :cached_votes_score
  end
end
