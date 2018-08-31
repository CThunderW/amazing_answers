class ContactController < ApplicationController
    def index
    end

    def submit
        #in rails, all of Expresses req.params, req.query, & req.body are combined into 'params'
        # render json: params

    #^^ use 'RENDER JSON: PARAMS as you 'res.send)req.body)' 
    #in express to show data in the browser as JSON. 
    #useful to learn for debuggings
      
    #To use variables in templates, create them as instance variables 
    # in your controller actions and methods.
    @message = "Thank you for contacting us!"
        render :index
    end
end
