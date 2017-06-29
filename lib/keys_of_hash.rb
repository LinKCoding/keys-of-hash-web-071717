class Hash
  def keys_of(arguments, *another)
    if another
      another = another.join("")
      if arguments.is_a?(Integer)
        another = another.to_i
        array1 = self.collect { |x,y|  x if y == arguments}.compact
        array2 = self.collect { |x,y|  x if y == another}.compact
        return array1.concat(array2)
      else
        array1 = self.collect { |x,y|  x if y == arguments}.compact
        array2 = self.collect { |x,y|  x if y == another}.compact
        return array1.concat(array2)
      end
    end
    self.collect { |x,y|  x if y == arguments}.compact
  end
end
