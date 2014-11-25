module ApplicationHelper

  def collection_to_html collection
    content_tag(:div) do
      collection.each do |o|
        concat(content_tag(:span, o, :class => "label label-default"))
      end
    end
  end

end
