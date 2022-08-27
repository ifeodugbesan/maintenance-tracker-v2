module ApplicationHelper
  def hide_nav
    (params[:controller] == 'pages' && params[:action] == 'home') || params[:controller] == "devise/sessions" || params[:controller] == "devise/registrations" || params[:controller] == "devise/passwords"
  end

  def not_devise
    params[:controller] == "devise/sessions" || params[:controller] == "devise/registrations" || params[:controller] == "devise/passwords"
  end
end
