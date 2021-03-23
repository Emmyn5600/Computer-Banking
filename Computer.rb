class Machine
    @@users = {}
    
    def initialize(username, password)
      @username = username
      @password = password
      @@users[username] = password
      @files = {}
    end
    
    def create(filename)
      time = Time.now
      @files[filename] = time
      puts "#{filename} was created by #{@username} at #{time}."
    end
    
    def Machine.get_users
      @@users
    end
  end
  
  my_machine = Machine.new("eric", 01234)
  your_machine = Machine.new("you", 56789)
  
  my_machine.create("groceries.txt")
  your_machine.create("todo.txt")
  
  puts "Users: #{Machine.get_users}"



  class Computer
    @@users = {}
    
    def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
    end
    
    def create(filename)
    time = Time.now
    @files[filename] = time
    puts "a new file was created."
    end
    
    def delete(username)
    @username = username
    @@users[username].delete
    end
    
    def update(username, password)
    @username = username
    @password = password
    @@user[username] = password
    
    puts "A user updated"
    end
    def Computer.get_users
    return @@users
    end
    end
    my_computer = Computer.new("Emmy", 1234590)
    
    