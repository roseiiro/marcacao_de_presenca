class Turma < ApplicationRecord
	has_many :utilizadors, dependent: :destroy
	has_many :estudante_na_turmas, dependent: :destroy
	has_many :estudantes, through: :estudante_na_turmas
end
