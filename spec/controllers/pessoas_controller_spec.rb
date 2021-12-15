require 'rails_helper'

RSpec.describe PessoasController, :type => :controller do
    context "GET #index" do
        it "should success and render to index page" do
            get :index
            expect(response).to have_http_status(200)
            expect(response).to render_template(:index)
        end

        it "should array empty" do
            get :index
            expect(assigns(:pessoas)).to be_empty
        end

        it "should have one pessoa" do
            create(:pessoa)
            get :index
            expect(assigns(:pessoas)).to_not be_empty
        end
    end

    context "GET #show" do
        let(:pessoa) {create(:pessoa)}
        it "should success and render to edit page" do
            get :show, params: {id: pessoa.id}
            expect(response).to have_http_status(200)
            expect(response).to render_template(:show)
        end

        it "where have id" do
            get :show, params: {id: pessoa.id}
            expect(assigns(:pessoa)).to be_a(Pessoa)
            expect(assigns(:pessoa)).to eq(pessoa)
        end
    end

    context "GET #new" do
        it "should success and render to new page" do
            get :new
            expect(response).to have_http_status(200)
            expect(response).to render_template(:new)
        end
        it "should have new post" do
            get :new
            expect(assigns(:pessoa)).to be_a(Pessoa)
            expect(assigns(:pessoa)).to be_a_new(Pessoa)
        end
    end

    context "GET #edit" do
        let(:pessoa) {create(:pessoa)}
        it "should success and render to edit page" do
            get :edit, params: {id: pessoa.id}
            expect(response).to render_template(:edit)
            expect(assigns(:pessoa)).to be_a(Pessoa)
        end
    end

    context "POST #create" do
        let!(:params){
            {tipo: 'membro', 
             cargo: 'líder de adultos',
             depto: "adultos",
             nome: 'fulano'
            }
        }
        it "create a new pessoa" do
            post :create, params: {pessoa: params}
            expect(flash[:notice]).to eq("Pessoa criada com sucesso.")
            expect(response).to redirect_to(action: :show, id: assigns(:pessoa).id)
        end

        it "not create a new pessoa" do
            params = {tipo: ''}
            post :create, params: {pessoa: params}
            expect(response).to render_template("new") 
        end
    end

    context "PUT #update" do
        let!(:pessoa) {create(:pessoa)}

        it "should update pessoa info" do
            params = {tipo: 'membro2'}
            put :update, params: {id: pessoa.id, pessoa: params}
            pessoa.reload
            expect(pessoa.tipo).to eq(params[:tipo])
            expect(flash[:notice]).to eq("Pessoa atualizada com sucesso.")
            expect(response).to redirect_to(action: :show, id: assigns(:pessoa).id)
        end

        it "should not update pessoa info" do
            params = {tipo: nil}
            put :update, params: {id: pessoa.id, pessoa: params}
            expect(response).to render_template(:edit) 
        end
    end

    context "DELETE #destroy" do
        let!(:pessoa) {create(:pessoa)}

        it "should delete pessoa" do
            delete  :destroy, params: {id: pessoa.id}
            expect(flash[:notice]).to eq("Pessoa excluida com sucesso.")
        end
    end

end