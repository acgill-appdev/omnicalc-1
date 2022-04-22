class ApplicationController < ActionController::Base
  ### square
  def blank_square_form
    render({ :template => "calc_templates/square_form.html.erb" })
  end
  def calc_square
    # params is a string
    @num = params.fetch("elephant").to_f
    @square_of_num = @num ** 2
    render({ :template => "calc_templates/square_results.html.erb" })
  end

  ### square root
  def blank_root_form
    render({ :template => "calc_templates/square_root_form.html.erb" })
  end
  def calc_root
    # params is a string
    @numm = params.fetch("yolo").to_f
    @root = @numm ** 0.5
    render({ :template => "calc_templates/square_root_results.html.erb" })
  end

  ### payment
  def blank_payment_form
    render({ :template => "calc_templates/payment_form.html.erb" })
  end 
  def calc_payment
    # params is a string
    @apr = params.fetch("user_apr").to_f
    @aprperc = "#{@apr}%"
    @years = params.fetch("user_years").to_f
    @prin = params.fetch("user_principal").to_f
    @n = 12*@years
    @r = @apr/12
    @numer = @r*@prin
    @denommm = 1+@r
    @denomm = 1-@denommm
    @denom = @denomm**(@n)
    @payment = @numer/@denom
    render({ :template => "calc_templates/payment_results.html.erb" })
  end

  ### random
  def blank_random_form
    render({ :template => "calc_templates/random_form.html.erb" })
  end
  def calc_random
    # params
    @lower = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @result = rand(@lower..@max)

    render({ :template => "calc_templates/random_results.html.erb"})
  end
end