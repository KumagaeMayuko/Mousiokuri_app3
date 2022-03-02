class TabsController < ApplicationController
  def note
    @tabs = Tab.all.order(priority: "ASC")
  end
end
