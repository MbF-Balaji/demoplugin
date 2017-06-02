require_dependency "plug_demo/application_controller"

module PlugDemo
  class PluginsController < ApplicationController
    before_action :set_plugin, only: [:show, :edit, :update, :destroy]

    # GET /plugins
    def index
      @plugins = Plugin.all
    end

    # GET /plugins/1
    def show
    end

    # GET /plugins/new
    def new
      @plugin = Plugin.new
    end

    # GET /plugins/1/edit
    def edit
    end

    # POST /plugins
    def create
      @plugin = Plugin.new(plugin_params)

      if @plugin.save
        redirect_to @plugin, notice: 'Plugin was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /plugins/1
    def update
      if @plugin.update(plugin_params)
        redirect_to @plugin, notice: 'Plugin was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /plugins/1
    def destroy
      @plugin.destroy
      redirect_to plugins_url, notice: 'Plugin was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_plugin
        @plugin = Plugin.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def plugin_params
        params.require(:plugin).permit(:name, :comments)
      end
  end
end
