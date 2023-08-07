require_relative "contato.rb"

class Agenda

  attr_accessor :lista_contatos

  def initialize()
    @lista_contatos = []
  end

  def ver_contatos()
    count = 1
    for contato in @lista_contatos do
      info_contato(count)
      count += 1
    end
    return nil
  end

  def adicionar_contato!(nome, telefone)
    contato = Contato.new(nome, telefone)
    @lista_contatos.push(contato)
    ver_contatos()
  end

  def info_contato(id)
    puts "#{id}: #{@lista_contatos[id-1].nome} | #{@lista_contatos[id-1].telefone}"
    puts "\n"
  end

  def editar_contato_nome!(id, novo_nome)
    @lista_contatos[id-1].nome = novo_nome
    info_contato(id)
  end

  def editar_contato_telefone!(id, novo_telefone)
    @lista_contatos[id-1].telefone = novo_telefone
    info_contato(id)
  end

  def remover_contato!(id)
    @lista_contatos.delete_at(id-1)
    ver_contatos()
  end

end
