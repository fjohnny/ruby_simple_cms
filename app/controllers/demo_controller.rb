class DemoController < ApplicationController
  
  layout 'admin'

  def index
    render('index')
  end

  def hello
    @myvar = "hello variable"
    @array = [1,2,3,4,5]

    @id = params['id']
    @page = params[:page]

    render('hello')
  end

  def other_hello
     
    #redirect_to(:controller => 'demo', :action => 'hello')
    redirect_to(:action => 'hello')
    
  end

  def gf
    redirect_to('https://gamefreaks.com.au');
  end;

  def escape_output
  
  end

end
