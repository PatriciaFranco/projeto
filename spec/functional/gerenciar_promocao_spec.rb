# coding: utf-8

require 'rails_helper'

feature 'gerenciar Promocao' do

  before :each do
    create(:empresa, nome: 'Nome', endereco: 'Endereco', telefone:'telefone', cnpj:'cnpj',latitude:'0.01',longitude:'0.02')
  end

  let(:empresa) {create(:empresa, nome: 'Nome2', endereco: 'Endereco', telefone:'telefone', cnpj:'cnpj',latitude:'0.01',longitude:'0.02')}

  scenario 'incluir Promocao' do # , :js => true  do

    visit new_promocao_path

    preencher_e_verificar_promocao
  end

  scenario 'alterar Promocao' do #, :js => true  do

    promocao = FactoryGirl.create(:promocao,:empresa => empresa)

    visit edit_promocao_path(promocao)

    preencher_e_verificar_promocao
  end

   scenario 'excluir Promocao' do #, :javascript => true  do

       promocao = FactoryGirl.create(:promocao, :empresa => empresa)

        visit promocoes_path

        click_link 'Excluir'
 end

   def preencher_e_verificar_promocao

      fill_in 'Data inicio',  :with => "13/05/2014"
      fill_in 'Data fim',  :with => "14/05/2014"
      fill_in 'Abragencia',  :with => "0.1"
      select 'Nome', from: 'Empresa'

      click_button 'Salvar'

      expect(page).to have_content 'Data inicio: 2014-05-13'
      expect(page).to have_content 'Data fim: 2014-05-14'
      expect(page).to have_content 'Abragencia: 0.1'
      expect(page).to have_content 'Empresa: Nome'
 end
end