module ApplicationHelper
  def current_list_item(link_text, link_path)
    class_name = current_page?(link_path) ? 'pure-menu-selected' : ''

    content_tag(:li, class: class_name) do
      link_to link_text, link_path
    end
  end
end
