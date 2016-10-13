class Roles < EnumerateIt::Base
  associate_values :admin, :guest, :manager
end
