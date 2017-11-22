module TrackRate
  class ProcessSend
    def initialize(object, service)
      self.object = object
      self.service = service
    end

    def self.perform(object, service)
      new.perform(object, service)
    end

    def perform
      object.update_attributes(
        send_count: new_send_count,
        open_percent: new_open_percent
      )
    end

    private

    attr_reader :object, :service

    def new_send_count
      object.send_count + 1
    end

    def new_open_percent
      (object.open_count / new_send_count) * 100
    end
  end
end
