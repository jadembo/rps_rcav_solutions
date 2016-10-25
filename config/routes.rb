Rails.application.routes.draw do
  get("/", { :controller => "game", :action => "user_plays_anything" })

  get("/:move", {:controller => "game", :action => "user_plays_anything"})
end
