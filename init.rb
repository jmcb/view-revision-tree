require 'redmine'

Redmine::Plugin.register :view_revision_tree do
  name 'Links to view the complete source tree of a revision'
  author 'Jon McManus'
  url 'http://github.com/jmcb/view-revision-tree'
  author_url 'http://github.com/jmcb'
  description 'Link to the entire source tree for this revision.'
  version '0.1'

  requires_redmine :version_or_higher => '0.8.0'
end
