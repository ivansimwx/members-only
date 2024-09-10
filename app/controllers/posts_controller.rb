class PostsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :create ]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(user_params)
    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
  end
end
