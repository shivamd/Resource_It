class SnippetsTags < ActiveRecord::Migration
  def change
    create_table :snippets_tags do |t|
      t.references :snippet
      t.references :tag
    end
  end
end
