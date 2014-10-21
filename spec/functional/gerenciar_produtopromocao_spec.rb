# coding: utf-8

require 'rails_helper'

feature 'gerenciar ProdutoPromocao' do

  before :each do
    create(:empresa, nome: 'Nome', endereco: 'Endereco', telefone:'telefone', cnpj:'cnpj',latitude:'0.01',longitude:'0.02')
    create(:produto, nome: 'Produto', descricao: 'descricao')
  end

  let(:empresa) {create(:empresa, nome: 'Nome2', endereco: 'Endereco', telefone:'telefone', cnpj:'cnpj',latitude:'0.01',longitude:'0.02')}
  let(:produto) {create(:produto, nome: 'Produto2', descricao: 'descricao')}

  scenario 'incluir ProdutoPromocao' do # , :js => true  do

    visit new_produtopromocao_path

    preencher_e_verificar_produtopromocao
  end

  scenario 'alterar ProdutoPromocao' do #, :js => true  do

    produtopromocao = FactoryGirl.create(:produtopromocao,:empresa => empresa, :produto => produto)

    visit edit_produtopromocao_path(produtopromocao)

    preencher_e_verificar_produtopromocao
  end

   scenario 'excluir ProdutoPromocao' do #, :javascript => true  do

       produtopromocao = FactoryGirl.create(:produtopromocao, :empresa => empresa,:produto => produto)

        visit produtopromocoes_path

        click_link 'Excluir'
    end

   def preencher_e_verificar_produtopromocao

      fill_in 'Valor',  :with => "0.5"
      select 'Nome', from: 'Empresa'
      select 'Produto', from: 'Produto'

      click_button 'Salvar'

      expect(page).to have_content 'Valor: 0.5'
      expect(page).to have_content 'Empresa: Nome'
      expect(page).to have_content 'Produto: Produto'

 end
end
