class RefrigeratorEventController < ApplicationController
  protect_from_forgery except: :add
  def add
    refrigerator_event = RefrigeratorEvent.new()
    refrigerator_event.save
  end

  def top
    require 'time'
    redrigerator_events = RefrigeratorEvent.all()
    gon.data = []
    gon.label = []
    gon.data_num = redrigerator_events.count
    for redrigerator_event in redrigerator_events do
      time = redrigerator_event.created_at
      gon.label << time
      gon.data << {x: (time + 1).strftime("%F %H:%M:%S"), y:-1}
      gon.data << {x: time.strftime("%F %H:%M:%S"), y:1}
      gon.data << {x: (time + 1).strftime("%F %H:%M:%S"), y:-1}
    end
  end
end
