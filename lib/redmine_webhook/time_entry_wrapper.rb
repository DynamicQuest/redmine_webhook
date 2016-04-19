module RedmineWebhook
  class TimeEntryWrapper
    def initialize(time_entry)
      @time_entry = time_entry
    end

    def to_hash
      {
        :id => @time_entry.id
      }
    end
  end
end
