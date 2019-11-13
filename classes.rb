module C
  def about_lookup
    "from module C"
  end
end

class A
  extend C
  def about_lookup
    "form class A"
  end
end

class B < A
  def about_lookup
    "form class B"
  end
end

#puts A.ancestors.inspect
#puts A.inspect
#puts A.superclass
#puts A.superclass.class.superclass.superclass.included_modules
#puts A.superclass.class.superclass.superclass.superclass

puts A.about_lookup
puts B.about_lookup
a = A.new
b = B.new
puts a.about_lookup
puts b.about_lookup
