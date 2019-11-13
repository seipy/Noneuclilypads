local bodies = {}

bodies.WarpBody = {}

function bodies.WarpBody:new(startSpace)
  newObj = {
    space = startSpace,
    previousSpace = nil,
    moveDirection = "left"
    }
  
  self.__index = self
  return setmetatable(newObj, self)
end


--- Makes the body move to a given space.
function bodies.WarpBody:moveTo(space, direction)
  self.previousSpace = self.space
  self.space = space
  self.moveDirection = direction
end

return bodies