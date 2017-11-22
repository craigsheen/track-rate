module TrackRate
  class TrackRate < ApplicationRecord
    belongs_to :tracking_object, polymorphic: true

    validates :tracking_service, presence: true

    def self.for(object, service)
      find_or_intialize_by(
        tracking_object_type: object.class.name, tracking_object_id: object.id,
        tracking_service: service
      )
    end
  end
end
