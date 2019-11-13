class AboutVariables
foo = 'local foo'
 	@@foo = 'was '  + foo + ", became class foo"

def initialize
		@foo = 'instance foo'
end

  	def show_local_foo
		    puts foo #local_foo
  	end

  	def show_class_foo
    		puts @@foo
  	end

  	def show_instance_foo
   		puts @foo
  	end

  	class << self
     		def show_local_foo
    			puts foo #local_foo
  		  end

  		  def show_class_foo
    			puts @@foo
  	  	end

  		  def show_instance_foo
    		 	puts @foo
  		  end
    end
end

AboutVariables.show_class_foo
#AboutVariables.show_local_foo
AboutVariables.show_instance_foo

a = AboutVariables.new
a.show_class_foo
#a.show_local_foo
a.show_instance_foo
