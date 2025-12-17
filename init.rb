require File.expand_path('lib/noprint_macro_hook', __dir__)

Redmine::Plugin.register :redmine_noprint_macro do
  name 'Redmine No-Print Macro plugin'
  author 'taikii'
  description 'Add non-printable area to wiki.'
  version '1.0.1'
  url 'https://github.com/taikii/redmine_noprint_macro'
  author_url 'https://github.com/taikii'

  Redmine::WikiFormatting::Macros.register do
    desc "Add non-printable area to wiki. Example:\n\n" +
    "{{noprint\n" +
    "This is Wiki block.\n" +
    "}}"
    macro :noprint do |obj, args, text|
      out = ''.html_safe
      out << content_tag(:div, textilizable(text, :object => obj, :headings => false), :class => 'noprint')
      out
    end
  end
end
