cep_api = ViacepAPI.new

Dado("que realizo a pesquisa usando CEP {string}") do |cep|
  @result = cep_api.consulta_cep(cep)
end

Então("o status retorna {string}") do |status_code|
  expect(@result.response.code).to eql status_code
end

Então("vejo o código IBGE do endereço") do
  @codigo_ibge = @result.parsed_response["ibge"]
  puts "Código IBGE do endereço: #{@codigo_ibge}"
end