-- template table
local template = {}

-- template name
template.name = "ShitTemplate"

-- template properties
template.properties = {}

template.properties["imagebutton"] = {
   GetHover = function(...) return true; end;
}

return template;