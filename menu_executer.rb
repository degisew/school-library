require_relative './options'

class MenuExecuter
  def menu_executer(option, app)
    choice = Option.new
    if option == 7
      puts 'Thank you for using this app!'
      exit
    else
      choice.options(option, app)

    end
  end
end
