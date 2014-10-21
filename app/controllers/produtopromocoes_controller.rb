class ProdutopromocoesController < InheritedResources::Base
	def build_resource_params
		[params.fetch(:produtopromocao, {}).permit(:valor, :empresa_id, :produto_id)]
	end		
end
