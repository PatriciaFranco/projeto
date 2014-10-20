class EmpresasController < InheritedResources::Base
def build_resource_params
        [params.fetch(:empresa, {}).permit(:nome, :endereco, :telefone, :cnpj, :latitude, :longitude)]
    end
end
