class ProdutosController < InheritedResources::Base
	def build_resource_params
		[params.fetch(:produto, {}).permit(:nome, :descricao, :empresa_id)]
	end		
end
