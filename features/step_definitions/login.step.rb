Dado('que o usuario acesse a pagina de login') do
    login.load
end
  
Quando('preenchemos com as informacoes validas') do
    login.userLogin(DATA[:user][:username], DATA[:user][:password])
end
  
Entao('devo logar com sucesso') do
    expect(home.logo.text).to eql "Swag Labs"
end