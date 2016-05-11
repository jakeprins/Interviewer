require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do

  let(:valid_attributes) {
    {question: "What's up?", answer: "Not much.. "}
  }

  let(:category_attributes) { {name: 'CSS', description: 'Styling stuff'}}

  let(:valid_session) { {} }


  describe "GET #index" do
      it "assigns all questions as @questions" do
        question = Question.create! valid_attributes
        category_1 = Category.create! category_attributes
        get :index, :category_id => category_1.id
        expect(assigns(:questions)).to eq([question])
      end
    end

    describe "POST #create" do
      it "creates a new Question" do
        expect {
            post :create, {:question => valid_attributes}, valid_session
        }.to change(Question, :count).by(1)
      end

      it "assigns a newly created question as @question" do
        post :create, {:question => valid_attributes}, valid_session
        expect(assigns(:question).to be_a(Question)
        expect(assigns(:question)).to be_persisted
      end

      it "redirects to the question index page" do
        post :create, {:question => valid_attributes}, valid_session
        expect(response).to redirect_to category_questions_path
      end
    end
end
