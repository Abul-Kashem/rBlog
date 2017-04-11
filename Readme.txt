rails new rBlog --no-ri --no-rdoc
bundle install
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'autoprefixer-rails', '~> 6.6'
gem 'bcrypt-ruby', :require => 'bcrypt'
gem 'mail_form', '~> 1.6'
gem 'simple_form', '~> 3.3', '>= 3.3.1'
bundle install
rails g controller posts index show
rails g controller admin/posts new create edit update destroy index show
rails g controller categories show
rails g controller admin/categories new create edit update destroy index show
rails g controller comments new
rails g controller admin/comments destroy
rails g controller admin/users new create edit update destroy index show
rails g controller admin/sessions new create
rails g controller about index
rails g controller contacts new create

rails g model post title:string category_id:integer user_id:integer tags:text image:string body:text
rails db:migrate
rails g model category name:string
rails db:migrate
rails g model user name:string email:string password_hash:string password_salt:string
rails g model comment name:string email:string body:text

rails c
category = Category.all
category = Category.new(:name => "News");
category.save
exit

resources :posts, :categories, :comments
resources "contacts", only: [:new, :create]

namespace :admin do
    resources :posts, :categories, :comments, :users
end

root 'post#index'
get 'contacts' => 'contact#new'
get 'about' => 'about#index'

Note: Then check all route properly working


2:26



class="<%= params[:controller] == 'admin/posts' ? 'active' : '' %>">
<%= link_to 'Users', admin_users_path %>










