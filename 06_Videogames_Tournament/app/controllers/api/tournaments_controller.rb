class Api::TournamentsController < ApplicationController
  def index
    tournaments = Tournament.all
    render json: tournaments
  end

  def create
		tournament = Tournament.create(tournament_params)
		render json: tournament, status: 201
  end


  def destroy
      tournament = Tournament.find_by(id: params[:id])
      unless tournament
        render json: {error: "Rournament nor found"}, status: 404
        return
      end
      tournament.destroy
      render json: tournament
  end


  private

  def tournament_params
    params.require(:tournament).permit(:name)
  end
end
