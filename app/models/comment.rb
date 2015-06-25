class Comment < ActiveRecord::Base
  belongs_to :article

  def new
    @comment = Comment.new
    @comment.article_id = @article.id
  end

end
