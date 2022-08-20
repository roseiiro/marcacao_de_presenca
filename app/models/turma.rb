class Turma < ApplicationRecord
	has_many :estudante_na_turmas, dependent: :destroy
	has_many :estudantes, through: :estudante_na_turmas

	# def self.identificacao_da_turma
	# 	identificacao
	# end

end
