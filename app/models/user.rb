class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum tipo_de_user: { :administrador => 0, docente: 1 }

  # def nome_do_utilizador_logado
  #   current_user.nome
  # end
end
