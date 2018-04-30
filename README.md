# My First Ruby on Rails app - Simple CMS  #

## Learned in this project ##

### Create Rails project 

```rails new [project_name] -d mysql```   - to use with MySql database

### Controllers & Views

#### Create Controller

```rails generate controller [controller_name] [action, action...] -d mysql```

- it creates a controller in the ```app/controllers``` folder
- it creates a view for each listed action in ```app/views/[controller_name]``` folder 
- view file is named ```[acton].html.erb```
- adds route(s) to [routes.db](config/routes.rb) file

#### Route types

- Simple Route 
  - ```get 'demo/index'```    - specified route a string
- root Route 
  - ```root 'demo#index'```    - defaults the root of the app to specified controller#action
- Default Route 
  - ```get ':controller(/:action(/:id))'```      - may go away in future versions of rails

#### Rendering an action in the controller

- render(:template => 'demo/hello')  or short version render('hello')  as 'demo' folder is implied for the demo controller

#### Redirecting action from a controller

- Part of HTTP Redirect standard
- ```redirect_to(:controller => 'demo', :action => 'hello')```
- We can skip :controller if it's within the same controller and just say ```redirect_to(:action => 'hello')```

#### Rendering Templates

- End with .erb (embedded ruby) - allow us to combine HTML and Ruby code
- Ruby code goes between <% %> tags
- If we want the result of the Ruby expression to be outputed to HTML we use <%= %> tags

#### Instance Variables

- Instance variables start with @ symbol. Defined in controller can be accessed in the view
- Only one way -  Controller doesn't see the changes made in the view

#### Links

- Use helper link_to(text, target)
- Target can be string ('/demo/index') or structure: {:controller => 'demo', :action => 'index'} (**"hash format"**)
- Helper also uses routes.rb file to figure out how to generate the path

#### URL Parameters

- we can access the parameters with params['id'] or params[:id]
- params are always **strings**


### Models and Databases 

#### Generate Migration

``` rails generate migration MigrationName ```

- ```up``` method makes a change to a database and ```down``` reverses that change

#### Generate Model

``` rails generate model User ```    (for model name use singular and camel-case)

#### Table Column Types & Options


| Table Column Types | Table Column Options |
---------------------|----------------------|
|binary | :limit ==> size |
|boolean | :default ==> value |
|date | :null ==> true/false |
|datetime |  |
|decimal | :precision => number |
|float | :scale => number |
|integer |  |
|string | | 
|text | |
| time | |

- Columns ```t.datetime "created_at"``` and ```t.datetime "updated_at"``` are automatically handeled and updated by rails  - Short notation is ```t.timestamps```
- id column gets created automatically

#### Run Migration

```rails db:migrate```

---
---
#README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
