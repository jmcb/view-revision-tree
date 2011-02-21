require 'redmine'

require 'dispatcher'

Dispatcher.to_prepare :forward_to_diffs do
    require_dependency 'application_helper'
    ApplicationHelper.send(:include, DiffForwardPluginPatch) unless ApplicationHelper.included_modules.include?(DiffForwardPluginPatch)
end

Redmine::Plugin.register :forward_to_diffs do
  name 'Forward to diffs'
  author 'Jon McManus'
  url 'http://github.com/jmcb/forward-to-diffs'
  author_url 'http://github.com/jmcb'
  description 'Link users directly to diffs of revisions, rather than to the overview.'
  version '0.1'

  requires_redmine :version_or_higher => '0.8.0'
end
