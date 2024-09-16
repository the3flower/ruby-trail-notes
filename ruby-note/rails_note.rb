=begin
  [Rails Knowledge Note]
  - Routing
  - Controller
=end

## SOME CONCERN!!
#  - If your 'rails' inside 'bin' folder you need to type command 
#    $ bin/rails ... (for correct directory)

## Routing
#  - Location: config/routes.rb
#  - Command for all the Routes available: 
#    : $ bin/rails routes 

# Root URL:
root to: "kittens#index"  #kittens controller, index action (method)

# RESTful routes:
# to: "controller#action"
get "/posts", to: "posts#index"
get "/posts/new", to: "posts#new"
get "/posts/:id", to: "posts#show"
post "/posts", to: "posts#create"  # usually a submitted form
get "/posts/:id/edit", to: "posts#edit"
put "/posts/:id", to: "posts#update" # usually a submitted form
delete "/posts/:id", to: "posts#destroy"

# Generate set of RESTful routes for 'posts' resource by 1 line, with 7 routes
resources :posts
# * for viewing generated route, please check by $ bin/rails routes

# DON"T want 7 routes?
# only: or except:
resources :posts, only: [:index, :show]
resources :users, except: [:index]

# URL format parameter
# 
# (.:format)
# - Optionally
# - Flexibility format
# - Different types of response(HTML, JSON, XML, etc.) but doesn't require one
# - If you want to specific format, you should manage in controller

## Controller
# 
# Rendering and Redirecting
# - Rails will 'render' a 'view' file that is 'named' the same thing as 'controller'
# - Render, is like a res.send() or res.json() in JavaScript
# - Redirect, is like a res.redirect() in JavaScript
# Example (compare with JavaScript):
# JavaScript:
# app.post('/submit', (req, res) => {
#   const isValid = true;  // Example validation
#   if (isValid) {
#     res.redirect('/success');  // Redirect to success page
#   } else {
#     res.send('Form has errors');  // Render error message (stay on the same page)
#   }
# });
# Rails:
# * render "" or render '', is NOT render string, it is render view template 
def create
  @post = Post.new(post_params)
  if @post.save
    redirect_to @post  # Redirects to the show action for the created post
  else
    render 'new'  # Stays on the new form and shows validation errors
  end
end

# Params & Strong Parameters
# - 'params' is a hash, automatically creates and populates with parameters sent from the client's request.
# - It is just parameter that we can work with it, don't overthinking.
# 
# Params:
# - Rails that gives you access to the data sent by the client (usually from a form or URL).
# Example of URL Parameters (in controller action):
def show
  @user = User.find(params[:id])
  # params[:id] will be "1" (from the URL /users/1)
end

# Strong Parameters:
# - Allows you to control which parameters are permitted
# - Security feature that is applied to the params hash
# - Declare 'after' private 
# Example:
private

def allowed_post_params
  params.require(:post).permit(:title,:body,:author_id)
end
# params - hash holds all the information sent via forms, URLs, or other request types (such as POST or GET).
# .require() - check if the key is present in the params hash. If the key (e.g., user) doesn’t exist, it raises an error.
# .permit() - specific keys (attributes) that can be passed from the params hash into the model. 

# Flash
#  - type of hash used to send special message to user
#  - like a res.json({message: ""}); in JavaScript (Express)
#  - flash[:notice], flash[:alert], flash.now[:key]
#
# Example flash and redirect:
# * NEED redirect
def create
  @user = User.new(user_params)
  if @user.save
    flash[:notice] = "User was successfully created!"  # Set the flash message
    redirect_to @user  # Redirect to the user show page
  else
    flash[:alert] = "Error creating user."
    render 'new'  # Rendering doesn't start a new request, so flash would still work here
  end
end
# * the success message "User was successfully created!" will be available after the redirect to the user's profile page.

# flash.now[:key]
# * rendering view with same request
def create
  @user = User.new(user_params)
  if @user.save
    redirect_to @user
  else
    flash.now[:alert] = "There was a problem creating the user."  # Use flash.now for immediate feedback
    render 'new'  # Re-rendering the 'new' template, no redirect happens
  end
end
