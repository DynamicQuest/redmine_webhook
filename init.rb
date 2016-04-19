require_dependency 'redmine_webhook'

Rails.configuration.to_prepare do
  unless ProjectsHelper.included_modules.include? RedmineWebhook::ProjectsHelperPatch
    ProjectsHelper.send(:include, RedmineWebhook::ProjectsHelperPatch)
  end
end

Redmine::Plugin.register :redmine_webhook do
  name 'Customized Redmine Webhook plugin'
  author 'dray'
  description 'A tweaked Redmine plugin posts webhook on creating and updating tickets and action items'
  version '0.0.1'
  url 'https://github.com/DynamicQuest/redmine_webhook'
  author_url 'http://redlettermarketing.com'
end
