module Dashboards
  class GroupsController < ApplicationController
    def index
      @group_count = Group.count
    end
  end
end
