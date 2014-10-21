json.array!(@produtopromocoes) do |produtopromocao|
  json.extract! produtopromocao, :id, :valor, :empresa_id, :produto_id
  json.url produtopromocao_url(produtopromocao, format: :json)
end
