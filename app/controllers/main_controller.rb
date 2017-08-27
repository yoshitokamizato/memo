class MainController < ApplicationController
  def main
    @talk = Talk.all

  end
  def create
    Talk.create(talk_params)
  end

  private
    def talk_params
      params.permit(:name, :text)
    end
end
