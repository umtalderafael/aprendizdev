class ClassroomsController < ApplicationController
  skip_before_action :authorized, only: [:index, :new, :create, :show, :edit, :destroy, :update, :status]

  def index
    @user = get_user(session[:user_id])
  end

  def new
    @dev = get_user(params[:dev_id])
    @aprendiz = get_user(params[:aprendiz_id])
    linguagens_dev = @dev.languages_id_array
    linguagens_aprendiz = @aprendiz.languages_id_array
    @linguagens_iguais = linguagens_dev & linguagens_aprendiz
    @mensagem = get_mensagem(@linguagens_iguais.size)
  end

  def create
    parametros = params.require(:classroom).permit(:dev_id, :aprendiz_id )
    dev = get_user(parametros['dev_id'])
    aprendiz = get_user(parametros['aprendiz_id'])
    nova_sala = Classroom.create(:ativa => true, :nome => "Sala de aula #{primeiro_nome(dev.nome)} & #{primeiro_nome(aprendiz.nome)}" )
    if nova_sala
      dev.classrooms << nova_sala unless dev.classrooms.include?(nova_sala)
      aprendiz.classrooms << nova_sala unless aprendiz.classrooms.include?(nova_sala)
      flash[:notice] = "Sala de aula criada com sucesso!"
    else
      flash[:notice] = "Não foi possivel criar a sala de aula!"
    end  
    redirect_to "/classrooms"
  end

  def show

    @sala = Classroom.find(params[:id])
    @user = get_user(session[:user_id])

    usuarios = @sala.users
    usuarios.each do |u|
      if u.tipo == 'Aprendiz'
        @aprendiz = u;
      else  
        @dev = u;
      end
    end

  end

  def status
    sala = Classroom.find(params[:id])
    sala.ativa = !sala.ativa
    
    if sala.save
      flash[:notice] = "Sala atualizada com sucesso!"
    else
      flash[:notice] = "Não foi possivel atualizar a sala de aula!"
    end  

    redirect_to "/classrooms"

  end  

  def get_user(id)
    User.find(id)
  end

  def primeiro_nome(nome)
    nome.to_s.split(' ')[0]
  end

  def get_mensagem(qtd)
    if qtd == 0
      return "Vocês não tem nenhuma linguagem em comum"
    elsif qtd == 1
      return "Vocês tem 1 linguagem em comum"
    elsif qtd > 1
      return "Vocês tem #{qtd} linguagens em comum"
    end
  end

end
