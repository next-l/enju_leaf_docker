class ApplicationController < ActionController::Base
  include EnjuCirculation::Controller
  include EnjuBiblio::Controller
  include EnjuLibrary::Controller
  include EnjuInventory::Controller
  include EnjuSubject::Controller
  include EnjuEvent::Controller
  include Pundit
  after_action :verify_authorized, unless: :devise_controller?
end
