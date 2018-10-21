class FilmesController < ApplicationController
    before_action :set_filme, only: [:show, :update, :destroy]

    #GET /filmes
    def index 
        @filmes = Filme.all
        json_response(@filmes)
    end

    #POST /filmes
    def create
        @filme = Filme.create!(filme_params)
        json_response(@filme, :created)
    end

    #GET /filmes/:id
    def show
        json_response(@filme)
    end

    #DELETE /filmes/:id
    def destroy 
        @filme.destroy
        head :no_content
    end

    private

    def filme_params
        params.permit(:titulo, :created_by)
    end

    def set_filme
        @filme = Filme.find(params[:id])
    end 

end
