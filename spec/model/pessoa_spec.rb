require 'rails_helper'

RSpec.describe Pessoa, :type => :model do
    context "Validar tipo da pessoa" do
        it "ele seja valido" do
            pessoa = Pessoa.new(tipo: "membro", cargo: "diacono")
            expect(pessoa).to be_valid
        end

        it "ele não seja valido" do
            pessoa = Pessoa.new(cargo: "diacono")
            expect(pessoa).to_not be_valid
        end

        it "e não pode ser em branco" do
            pessoa = Pessoa.new(tipo: nil)
            pessoa.valid?
            expect(pessoa.errors[:tipo]).to include("can't be blank")
        end
    end
end