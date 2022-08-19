class Estudante < ApplicationRecord
	has_many :estudante_na_turmas, dependent: :destroy
	has_many :turmas, through: :estudante_na_turmas
end
