class User < ActiveRecord::Base
    has_many :comments
 
    # user = User.first   
    # user.comments
    # -> SELECT "comments".* FROM "comments" WHERE "comments"."user_id" = ?  [["user_id", 1]]
    # => #<ActiveRecord::Associations::CollectionProxy []> 
    
    # comment = Comment.new(description: "This is a new comment", user: user)
    # comment.save
    
    # user = User.fist
    # user.comments
    # -> SELECT "comments".* FROM "comments" WHERE "comments"."user_id" = ?  [["user_id", 1]]
    # => #<ActiveRecord::Associations::CollectionProxy [#<Comment id: 1, description: "This is a new comment", user_id: 1, created_at: "2018-07-02 02:21:59", updated_at: "2018-07-02 02:21:59">]> 

    # comment
    # -> => #<Comment id: 1, description: "This is a new comment", user_id: 1, created_at: "2018-07-02 02:21:59", updated_at: "2018-07-02 02:21:59"> 
    
    # comment.user
    #  => #<User id: 1, username: "aaa", email: "bbb", created_at: "2018-07-02 02:13:09", updated_at: "2018-07-02 02:13:09"> 
end