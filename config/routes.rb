Rails.application.routes.draw do
  get("/", {:controller=>"homepage", :action=> "landing"}) #controller automatically adds "_controller" when searching controllers in app folder
  get("/dice/:numb_dice/:numb_sides", {:controller=>"roll_dice", :action=> "landing"}) #controller automatically adds "_controller" when searching controllers in app folder
end
