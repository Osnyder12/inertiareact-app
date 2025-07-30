class PostsController < ApplicationController
  before_action :set_posts, only: [:index]

  def index
    render inertia: 'PostsIndex', props: {
      posts: serialized_posts
    }
  end

  private

  def set_posts
    @posts = Post.includes(:advisor)
  end

  def serialized_posts
    @posts.map do |post|
      {
        id: post.id,
        title: post.title,
        content: post.content,
        advisor: {
          id: post.advisor.id,
          name: post.advisor.name,
          title: post.advisor.title
        }
      }
    end
  end
end