module Dashboards
  class ImportsController < ApplicationController
    def index
      @import_count = Import.count
    end
  end
end
