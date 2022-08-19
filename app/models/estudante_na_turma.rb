class EstudanteNaTurma < ApplicationRecord
  belongs_to :turma
  belongs_to :estudante
end
