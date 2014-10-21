class Produtopromocao < ActiveRecord::Base
  belongs_to :empresa
  belongs_to :produto
end
