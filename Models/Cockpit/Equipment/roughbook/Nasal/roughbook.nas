#Screen Tilt Angle.
var screen_angle = props.globals.initNode("b707/equipment/roughbook/screen_angle",0,"INT");

#Tablet Mode.
var tablet_mode = props.globals.initNode("b707/equipment/roughbook/tablet_mode",0,"BOOL");

#Charger.
var charger = props.globals.initNode("b707/equipment/roughbook/charger_connected",0,"BOOL");

var my_canvas = canvas.new({
  "name": "PFD-Test",   # The name is optional but allow for easier identification
  "size": [1024, 1024], # Size of the underlying texture (should be a power of 2, required) [Resolution]
  "view": [768, 1024],  # Virtual resolution (Defines the coordinate system of the canvas [Dimensions]
                        # which will be stretched the size of the texture, required)
  "mipmapping": 1       # Enable mipmapping (optional)
});


# Place it on all objects called PFD-Screen
my_canvas.addPlacement({"node": "CanvasScreenFace"});
