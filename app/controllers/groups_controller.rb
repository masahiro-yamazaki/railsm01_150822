class GroupsController < ApplicationController

  # GET /groups
  # GET /groups.json
  def index
    @groups_all = Group.all
    @groups = Group.all
    @groups = Group.where("name='"+params[:group_name]+"'") if params[:group_name].present?
  end

  # POST /groups
  # POST /groups.json
  def create
    @groups_all = Group.all
    @groups = Group.all
    @groups = @groups.where("name='"+params[:group_name]+"'") if params[:group_name].present?
  end

end
