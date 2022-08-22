module ApplicationHelper
  def hide_nav
    params[:controller] == 'pages' && params[:action] == 'home'
  end
end
