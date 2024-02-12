  Dado('que eu consulte a lista de usuarios cadastrados') do
    @get_url = 'https://serverest.dev/usuarios'
  end
  
  Quando('faço a pesquisa') do
    @list_users = HTTParty.get(@get_url) 
  end
  
  Entao('deve exibir a lista de todos os usuarios cadastrados') do
    expect(@list_users.code).to eql 200
  end
 

  Dado('que eu cadastre um novo usuario') do
    @post_url = 'https://serverest.dev/usuarios'
  end
  
  Quando('eu enviar as informacoes validas do usuario') do
    @create_user = HTTParty.post(@post_url, :headers => {'Content-Type': 'application/json'}, body: {
      
            "nome": "Larissa teste quatro",
            "email": "larissateste5@gmail.com",
            "password": "teste",
            "administrador": "true"
        
  }.to_json)
   end
  
  Entao('o usuario sera cadastrado') do
    puts @create_user.code
    puts @create_user.msg
    puts @create_user["message"]
    puts @create_user["_id"]
  end
 
  Dado ('que ja possuo um usuario cadastrado') do
    @post_url = 'https://serverest.dev/usuarios'
  end  

  Quando('eu envio os dados do usuario ja cadastrado') do
    @create_user_existing = HTTParty.post(@post_url, headers: {'Content-Type' => 'application/json'}, body:
    {
      
            "nome": "Larissa teste quatro",
            "email": "larissateste5@gmail.com",
            "password": "teste",
            "administrador": "true"
        
  }.to_json)
     end 

  Entao('e exibida a frase Este email ja esta sendo usado') do
   puts @create_user_existing
   expect(@create_user_existing.code).to eql 400
  end
  
  Dado('que usuario ja tenha cadastro') do
    @put_url = 'https://serverest.dev/usuarios/Qt8FXKBpU71120dk' 
  end
  
  Quando('altero o nome') do
    @update_user = HTTParty.put(@put_url, headers:  {'Content-Type' => 'application/json'}, body:{
        "nome": "Larissa Giffony2",
        "email": "larigiffony3@gmail.com",
        "password": "nilica123",
        "administrador": "true"

  }.to_json)
  end
  
  Entao('o nome deve ser alterado') do
    expect(@update_user.code).to eql 200
  end    

Dado ('que eu esteja com meu cadastro aberto')do
@put_url = ('https://serverest.dev/usuarios/Qt8FXKBpU71120dk')
end

Quando ('altero o email')do
@update_user = HTTParty.put(@put_url, headers:  {'Content-Type' => 'application/json'}, body:{
        "nome": "Larissa Giffony2",
        "email": "larigiffony5@gmail.com",
        "password": "nilica123",
        "administrador": "true"

  }.to_json)
end

Entao ('o email deve ser alterado')do
expect(@update_user.code).to eql 200
end