class PostsController < ApplicationController
  before_action :set_posts, only: [:index]
  before_action :set_post, only: [:show]

  def index
    render inertia: 'Posts/Index', props: {
      posts: serialized_posts
    }
  end

  def show
    render inertia: 'Posts/Show', props: {
      post: post_hash(@post)
    }
  end

  private

  def set_post
    @post = Post.includes(:advisor).find_by(id: params[:id])
  end

  def set_posts
    @posts = Post.includes(:advisor)
  end

  def serialized_posts
    @posts.map do |post|
      post_hash(post)
    end
  end

  def post_hash(post)
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