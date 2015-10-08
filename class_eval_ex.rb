class LibraryManager
  def self.make_available(klass, user)
    klass.class_eval do 
      define_method("lend_to_#{user}") do
      end 
    end 
  end 
end

#dynamically create methods that lend to user passed in