class RenameSourcesToArticlesSources < ActiveRecord::Migration[5.2]
  def self.up
  	rename_table :sources, :articles_sources
  end
end
