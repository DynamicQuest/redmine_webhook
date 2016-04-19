module RedmineWebhook
  class TimeEntryWrapper
    def initialize(time_entry)
      @time_entry = time_entry
    end

    def to_hash
      {
        :id => @time_entry.id,
        :hours => @time_entry.hours,
        :comments => @time_entry.comments,
        :created_on => @time_entry.created_on,
        :updated_on => @time_entry.updated_on,
        :project => RedmineWebhook::ProjectWrapper.new(@time_entry.project).to_hash,
        :user => RedmineWebhook::AuthorWrapper.new(@time_entry.user).to_hash,
        :issue => RedmineWebhok::IssueWrapper.new(@time_entry.issue).to_hash
      }
    end
  end
end
