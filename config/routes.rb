Rails.application.routes.draw do
#   get 'homepages/index'
#   get 'homepages/show'
#   get 'courses/index'
#   get 'courses/new'
#   get 'courses/create'
#   get 'courses/edit'
#   get 'courses/show'
#   get 'courses/update'
#   get 'courses/destroy'
#   get 'cohorts/index'
#   get 'cohorts/new'
#   get 'cohorts/create'
#   get 'cohorts/edit'
#   get 'cohorts/show'
#   get 'cohorts/update'
#   get 'cohorts/destroy'
#   get 'instructors/index'
#   get 'instructors/new'
#   get 'instructors/create'
#   get 'instructors/show'
#   get 'instructors/edit'
#   get 'instructors/update'
#   get 'instructors/destroy'
#   get 'students/index'
#   get 'students/new'
#   get 'students/create'
#   get 'students/edit'
#   get 'students/show'
#   get 'students/update'
#   get 'students/destroy'
#   get 'admins/index'
#   get 'admins/edit'
#   get 'admins/update'
#   get 'admins/destroy'
#   get 'posts/index'
#   get 'posts/edit'
#   get 'posts/update'
#   get 'posts/destroy'
#   get 'users/index'
#   get 'users/edit'
#   get 'users/update'
#   get 'users/destroy'
#   get 'posts/index'
#   get 'posts/edit'
#   get 'posts/update'
#   get 'posts/destroy'

root to: 'users#index'
# resources :posts
post '/users' => 'users#create'
post '/posts' => 'posts#create'


get '/post/:id' => 'posts#destroy'
get '/instructor' => 'instructors#index'
get '/student' => 'students#index'
# get '/student' => 'posts#index'
get '/cohort' => 'cohorts#index'

get '/dashboard' => 'homepages#index'

get '/course' => 'courses#index'

get '/instructor/:id' => 'instructors#show'
get '/student/:id' => 'students#show'
get '/course/:id' => 'courses#show'

# get '/post/:id' => 'posts#destroy'

#   get 'articles/new'

#   resources :articles
#   root to: 'articles#test'

    # resources :layouts
    # root to: 'layouts#application'

end
