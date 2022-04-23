class NoprintMacroHook < Redmine::Hook::ViewListener
  include ActionView::Helpers::TagHelper

  def view_layouts_base_html_head(context={})
    html = ""
    html << stylesheet_link_tag('redmine_noprint_macro.css'  , :plugin => 'redmine_noprint_macro', :media => 'all')
    return html
  end

end
