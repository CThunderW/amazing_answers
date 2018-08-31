Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #to create a route, use any of the methods offered by rails 
  #that are named after all available HTTP methods (e.g. get, post, put, patch, delete)

  #The first argument is a URL path as a string.  
  #Then, provide the named argument "to" with string that 
  #gives the location of an action in a controller. 

  #EXAMPLE: 'to: "welcome#index"' directs the request
  #to the welcome_controller with the action "index"
  get("/", to: "welcome#index", as: :root)

  #routes will creates methods that are usable in your controllers
  #and views that wil return the url  or url path to a route.
  #this is tremendously useful when creating links.

  #The name of these will generate from the first argument.  
  #Otherwise it will use the named arg. 'as''s value.

  #The 'get' above will create: 
  # - root_path -> "/"
  # - root_url -> "http://localhost:3000/"
  
  
  get("/contact", to: "contact#index")
  #Methods provided: `contact_path` and `contact_url`
  post("/contact/submit", to: "contact#submit")

end



#TO VIEW ALL ROUTES AVAILABLE IN YOUR APPLICATION, 
#RUN 'RAILS ROUTES' IN THE  COMMAND TERMINAL.