class RefrigeratorEventController < ApplicationController
  protect_from_forgery except: :add
  def add
    refrigerator_event = RefrigeratorEvent.new()
    refrigerator_event.save
  end
end
