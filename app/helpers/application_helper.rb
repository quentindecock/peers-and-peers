module ApplicationHelper
  def current_page_is_homepage?
    is_a_match = false
    ['/','/en','/fr','/en/pages/homepage','/fr/pages/homepage'].each do |path|
      is_a_match = is_a_match || current_page?(path)
    end
    is_a_match
  end
end
