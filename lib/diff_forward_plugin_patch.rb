module DiffForwardPluginPatch
    def self.included(base)
        base.send(:include, InstanceMethods)
        base.class_eval do
            alias_method_chain :link_to_revision, :diff_link
        end
    end

    module InstanceMethods
        def link_to_revision_with_diff_link(revision, project, options={})
            text = options.delete(:text) || format_revision(revision)

            link_to(text, {:controller => 'repositories', :action => 'diff', :id => project, :rev => revision}, :title => l(:label_revision_id, revision))
        end
    end
end 
