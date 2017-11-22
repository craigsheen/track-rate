module TrackRate
  class ProcessOpen
    def initialize(object, service)
      self.object = object
      self.service = service
    end

    def self.perform(object, service)
      new.perform(object, service)
    end

    def perform
      object.update_attributes(
        open_count: new_open_count,
        open_percent: new_open_percent
      )
    end

    private

    attr_reader :object, :service

    def new_open_count
      object.open_count + 1
    end

    def new_open_percent
      (new_open_count / object.send_count) * 100
    end
  end
end
