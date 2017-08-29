class MainController < ApplicationController
  before_action :move_to_index, except: :main

  def main
    @talk = Talk.all
  end

  def create
    Talk.create(talk_params)
  end

  def destroy
    talk = Talk.find(params[:id])
    talk.destroy
  end

  private
  def talk_params
    params.permit(:name, :text)
  end

  def move_to_index
    redirect_to action: :main unless user_signed_in?
  end
end
