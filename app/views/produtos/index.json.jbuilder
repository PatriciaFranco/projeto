json.array!(@produtos) do |produto|
  json.extract! produto, :id, :nome, :descricao, :empresa_id
  json.url produto_url(produto, format: :json)
end
