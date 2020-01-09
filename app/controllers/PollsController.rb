class PollsController < ApplicationController

def index
    @polls = Poll.all
    render json: @polls
    # render json: PollSerializer.new(@polls).serialize
end

  def show
    @poll = Poll.find(params[:id])
    render json: @poll, status: :ok
  end

  def create
    @poll = Poll.create(
        # message: params[:message],
        # user_id: params[:user_id],
        # yay: params[:yay],
        # nay: params[:nay],
        # expiration: params[:expiration],
        # options: params[:options]
        pollParams
    )

    # @poll = Poll.new( message: params[:message], user_id: params[:user_id] )
    # @poll.save
    render json: {poll: @poll}

  end

  def update

    @poll = Poll.find(params[:id])
    # @poll.yay = params[:yay]
    # @poll.nay = params[:nay]
    @poll.update(pollParams)
    render json: {poll: @poll}
  end

#   def comment
#     comment = Comment.create({
#       content: params[:content],
#       user: session_user,
#       movie_id: params[:id].to_i,
#       stars: params[:stars]
#     })

#     if review.save
#       render json: review, status: :ok
#     else
#       render json: {errors: review.errors.full_messages[0]}
#     end
#   end

  private

  def pollParams 
    params.require(:poll).permit(:id, :message, :user_id, :yay, :nay, :expiration, :option1, :option2)
  end


end
