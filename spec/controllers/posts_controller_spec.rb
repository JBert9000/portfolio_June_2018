require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe '#index' do
    it 'should render view' do
      get :index
      expect(response).to render_template(:index)
    end
  end
end
