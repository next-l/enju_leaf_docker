class ApplicationController < ActionController::Base
  include EnjuCirculation::Controller
  include EnjuLibrary::Controller
  include EnjuSubject::Controller
  include EnjuBiblio::Controller

  include Pundit
  before_action :set_paper_trail_whodunnit
  after_action :verify_authorized, unless: :devise_controller?
end
