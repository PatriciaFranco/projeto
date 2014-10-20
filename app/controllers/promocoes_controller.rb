class PromocoesController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:promocao, {}).permit(:data_inicio, :data_fim, :abragencia, :empresa_id)]
    end
end
