require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do

  let(:user) { User.create(email: "poster@social.com", password: "12345678") }

  let(:valid_attributes) {{name: "CSS", description: "Styling language"}}

  let(:valid_session) { {} }

    describe "GET #index" do
      context "with valid params" do
        it "assigns all categories as @categories" do
          category = Category.create! valid_attributes
          get :index
          expect(assigns(:categories)).to eq([category])
        end
      end

      describe "POST #create" do
        it "is not accessible when not logged in" do
          post :create, {:category => valid_attributes}
          expect(response).to redirect_to new_user_session_path
        end

        context "when logged in" do
          login_user

        it "creates a new Category" do
          expect {
            post :create, {:category => valid_attributes}, valid_session
            }.to change(Category, :count).by(1)
        end

        it "assigns a newly created category as @category" do
          post :create, {:category => valid_attributes}, valid_session
          expect(assigns(:category)).to be_a(Category)
          expect(assigns(:category)).to be_persisted
        end

        it "redirects to the root page" do
          post :create, {:category => valid_attributes}, valid_session
          expect(response).to redirect_to root_path
        end
      end
    end
  end
end
