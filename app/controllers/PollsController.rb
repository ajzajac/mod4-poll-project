class PollsController < ApplicationController

def index
    @polls = Poll.all
    render json: @polls
end


  def show
    @poll = Poll.find(params[:id])
    render json: @poll, status: :ok
  end

  def create
    @poll = Poll.create(
        message: params[:message],
        user_id: params[:user_id],
        yay: params[:yay],
        nay: params[:nay]
    )

    # @poll = Poll.new( message: params[:message], user_id: params[:user_id] )
    # @poll.save
    render json: {poll: @poll}

  end

  def comment
    comment = Comment.create({
      content: params[:content],
      user: session_user,
      movie_id: params[:id].to_i,
      stars: params[:stars]
    })

    if review.save
      render json: review, status: :ok
    else
      render json: {errors: review.errors.full_messages[0]}
    end
  end


end
