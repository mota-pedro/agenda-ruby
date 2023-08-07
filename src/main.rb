require_relative "agenda.rb"

agenda = Agenda.new()

loop do

  puts "\n@ Minha agenda @\n1. Meus Contatos\n2. Adicionar Novo Contato\n3. Ver Informações do Contato\n4. Editar Contato\n5. Remover Contato\n0. Sair\n"
  puts "\n"
  codigo =  gets.chomp.to_i

  break unless codigo != 0

  case
    when codigo == 1
      if agenda.lista_contatos == []
        puts "\nLista de contatos vazia\nTente adicionar um novo contato"
      end
        agenda.ver_contatos()
    when codigo == 2
      puts "\nInsira o nome do contato: "
      nome = gets.chomp
      puts "\nInsira o telefone do contato: "
      telefone = gets.chomp
      agenda.adicionar_contato!(nome, telefone)
    when codigo == 3
      puts "\nSelecione um contato: "
      agenda.ver_contatos()
      id = gets.chomp.to_i
      agenda.info_contato(id)
    when codigo == 4
      puts "\nQual contato deseja alterar? "
      agenda.ver_contatos()
      id = gets.chomp.to_i
      puts "\nQual informação deseja alterar?\n1. Nome\n2. Telefone"
      num = gets.chomp.to_i

      if num == 1
        puts "\nInsira o novo nome: "
        novo_nome = gets.chomp
        agenda.editar_contato_nome!(id, novo_nome)
      elsif num == 2
        puts "\nInsira o novo telefone: "
        novo_telefone = gets.chomp
        agenda.editar_contato_telefone!(id, novo_telefone)
      else
        puts "\nInsira um número válido"
      end

    when codigo == 5
      puts "\nQual contato deseja remover? "
      agenda.ver_contatos()
      id = gets.chomp.to_i
      agenda.remover_contato!(id)
    else
      puts "\nInsira um número válido"
  end

end
