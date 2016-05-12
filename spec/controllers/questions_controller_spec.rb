require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do

  let(:user) { User.create(email: "poster@social.com", password: "12345678") }

  let!(:a_category) do
    Category.create!(
      name: "Just somehting",
      description: "nothing much"
      )
  end

  let(:valid_attributes) {
    {question: "What's up?", answer: "Not much.. ", category_id: a_category.to_param }
  }

  let(:valid_session) { {} }


  describe "GET #index" do
      it "assigns all questions as @questions" do
        question = Question.create! valid_attributes
        get :index, { category_id: a_category.to_param }
        expect(assigns(:questions)).to eq([question])
      end
    end


    describe "POST #create" do
      it "is not accessible when not logged in" do
        post :create, {:question => valid_attributes, category_id: a_category.to_param }
        expect(response).to redirect_to new_user_session_path
      end

      context "when logged in" do
      login_user

      it "creates a new Question" do
        expect {
            post :create, {:question => valid_attributes, category_id: a_category.to_param }, valid_session
        }.to change(Question, :count).by(1)
      end

      it "assigns a newly created question as @question" do
        post :create, {:question => valid_attributes, category_id: a_category.to_param }
        expect(assigns(:question)).to be_a(Question)
        expect(assigns(:question)).to be_persisted
      end

      it "redirects to the question index page" do
        post :create, {:question => valid_attributes, category_id: a_category.to_param}, valid_session
        expect(response).to redirect_to category_questions_path
      end
    end
  end
end
