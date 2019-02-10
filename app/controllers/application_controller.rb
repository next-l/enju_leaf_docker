class ApplicationController < ActionController::Base
  include EnjuCirculation::Controller
  include EnjuLibrary::Controller
  include EnjuSubject::Controller
  include EnjuBiblio::Controller

  include Pundit
  after_action :verify_authorized, unless: :devise_controller?
end
