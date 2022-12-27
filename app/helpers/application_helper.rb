module ApplicationHelper
  def locale
      I18n.locale == :en ? "Estados Unidos" : "Portugues do Brasil"#Condicinal ternária
  end

  def data_br(data_usa)
      data_usa.strftime("%d/%m/%Y")
  end

  def ambiente_rails
    if Rails.env.development?
      "Desenvolvimento"
    elsif Rails.env.production?
      "Produção"
    else
      "Teste"
    end
  end
end
