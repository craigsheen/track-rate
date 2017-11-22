module TrackRate
  class SendGridsController < ApplicationController
    def open
      tracking_object = tracking_class.find_by(sanitized_params[:email])
      ProcessOpen.perform(tracking_object, 'email')
    end

    private

    def sanitized_params
      params.permit(:email)
    end
  end
end
