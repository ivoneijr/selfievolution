class API::V1::ApplicationController <  ActionController::Metal

	 include ActionController::StrongParameters
	 include ActionController::Rendering
	 include ActionController::Renderers::All
	 include ActionController::Serialization
	 include ActionController::Redirecting
	 include Rails.application.routes.url_helpers
	 
 end