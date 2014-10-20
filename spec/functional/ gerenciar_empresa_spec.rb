# coding: utf-8

require 'rails_helper'

feature 'gerenciar Empresa' do

  scenario 'incluir Empresa' do # , :js => true  do

    visit new_empresa_path

    preencher_e_verificar_empresa



  end

  scenario 'alterar Empresa' do #, :js => true  do

    empresa = FactoryGirl.create(:empresa)

    visit edit_empresa_path(empresa)

    preencher_e_verificar_empresa



  end

   scenario 'excluir Empresa' do #, :javascript => true  do

       empresa = FactoryGirl.create(:empresa)

        visit empresas_path

        click_link 'Excluir'



  end

   def preencher_e_verificar_empresa

      fill_in 'Nome',  :with => "Nome"
      fill_in 'Endereço',  :with => "Endereço"
      fill_in 'Telefone',  :with => "Telefone"
      fill_in 'Cnpj',  :with => "cnpj"
      fill_in 'Latitude',  :with => "0.01"
      fill_in 'Longitude',  :with => "0.02"

      click_button 'Salvar'

      expect(page).to have_content 'Nome: Nome'
      expect(page).to have_content 'Endereco: Endereço'
      expect(page).to have_content 'Telefone: Telefone'
      expect(page).to have_content 'Cnpj: cnpj'
      expect(page).to have_content 'Latitude: 0.01'
      expect(page).to have_content 'Longitude: 0.02'




   end
end