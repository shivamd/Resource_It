class CreateSnippets < ActiveRecord::Migration
  def change
  	create_table :snippets do |t|
  		t.text :content
  		t.references :user
  	end
  end
end
