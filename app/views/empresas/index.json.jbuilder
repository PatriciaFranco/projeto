json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :nome, :endereco, :telefone, :cnpj, :latitude, :longitude
  json.url empresa_url(empresa, format: :json)
end
