class PlayersController < ApplicationController
    before_action :find_id, only: %i[show edit update destroy ]
    def index
        @players = Player.all
    end

    def new
        @player = Player.new
    end

    def show
    end

    def create
        @player = Player.new(valid_params)
        if @player.save
            redirect_to players_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
    end

    def update
        if @player.update(valid_params)
            redirect_to players_path
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @player.destroy
        redirect_to players_path
    end

    private

    def valid_params
        params.require(:player).permit(:Name, :Role)
    end

    def find_id
        @player = Player.find(params[:id])
    end
end
