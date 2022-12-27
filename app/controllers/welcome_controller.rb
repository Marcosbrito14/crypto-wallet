class WelcomeController < ApplicationController
#Query params request aula 55
  def index
    # cookies[:curso] = "Usando Cookie"#Guarda os dados no browser
    # session[:curso] = "Usando Session"#Guarda os dados no servidor

    @meu_nome = params[:nome]
    @curso = params[:curso]
  end
end
