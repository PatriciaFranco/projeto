# coding: utf-8

require 'rails_helper'

feature 'gerenciar Produto' do

  before :each do
    create(:empresa, nome: 'Nome', endereco: 'Endereco', telefone:'telefone', cnpj:'cnpj',latitude:'0.01',longitude:'0.02')
  end

  let(:empresa) {create(:empresa, nome: 'Nome2', endereco: 'Endereco', telefone:'telefone', cnpj:'cnpj',latitude:'0.01',longitude:'0.02')}

  scenario 'incluir Produto' do # , :js => true  do

    visit new_produto_path

    preencher_e_verificar_produto
  end

  scenario 'alterar Produto' do #, :js => true  do

    produto = FactoryGirl.create(:produto,:empresa => empresa)

    visit edit_produto_path(produto)

    preencher_e_verificar_produto
  end

   scenario 'excluir Produto' do #, :javascript => true  do

       produto = FactoryGirl.create(:produto, :empresa => empresa)

        visit produtos_path

        click_link 'Excluir'
 end

   def preencher_e_verificar_produto

      fill_in 'Nome',  :with => "nome"
      fill_in 'Descricao',  :with => "descricao"
      select 'Nome', from: 'Empresa'

      click_button 'Salvar'

      expect(page).to have_content 'Nome: nome'
      expect(page).to have_content 'Descricao: descricao'
      expect(page).to have_content 'Empresa: Nome'
 end
end