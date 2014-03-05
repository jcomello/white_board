# encoding: utf-8

require 'spec_helper'

describe "create sticker" do
  context "when sticker has complete info" do
    it "creates a new sticker" do
      visit new_sticker_path

      fill_in 'Title', :with => 'Qualquer titulo'
      fill_in 'Description', :with => 'Qualquer descricao'

      click_on 'Create Sticker'

      page.current_path.should eq stickers_path

      within '.planed-stickers' do
        page.should have_content 'Qualquer titulo'
      end
    end
  end

  context "when sticker has incomplete info" do
    it "does not create a sticker" do
      visit new_sticker_path

      click_on 'Create Sticker'

      page.should have_content 'Título não pode ficar em branco'
    end
  end
end
