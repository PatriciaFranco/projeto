json.array!(@promocoes) do |promocao|
  json.extract! promocao, :id, :data_inicio, :data_fim, :abragencia, :empresa_id
  json.url promocao_url(promocao, format: :json)
end
