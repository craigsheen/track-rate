module TrackRate
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def tracking_object
      TrackRate.tracking_object
    end
  end
end
