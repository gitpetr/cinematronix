class HallChannel < ApplicationCable::Channel
    def subscribed
      stream_from "/#{params[:movie_session_id]}/booking/new"
    end
end
