class Object
  def _methods
    (methods - Object.methods).sort
  end

  def _instance_methods
    (instance_methods - Object.new.methods).sort
  end
end
