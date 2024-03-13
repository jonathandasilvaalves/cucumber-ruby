Dado('que o usuario acesse a pagina de login') do
    @login = LoginPage.new
    @login.load
end
  
Quando('preenchemos com as informacoes validas') do
    @login.userLogin(DATA[:user][:username], DATA[:user][:password])
end
  
Entao('devo logar com sucesso') do
    @home = HomePage.new
    expect(@home.logo.text).to eql "Swag Labs"
end