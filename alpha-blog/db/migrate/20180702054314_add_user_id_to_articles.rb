class AddUserIdToArticles < ActiveRecord::Migration[5.2]
  def change
    #  => Article(id: integer, title: string, description: text, created_at: datetime, updated_at: datetime, user_id: integer) 
    add_column :articles, :user_id, :integer
  end
end
