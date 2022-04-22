class ApplicationController < ActionController::Base
  def blank_square_form
    render({ :template => "calc_templates/square_form.html.erb" })
  end
  def calc_square
    # params is a string
    @num = params.fetch("elephant").to_f
    @square_of_num = @num * @num
    render({ :template => "calc_templates/square_results.html.erb" })
  end

  def blank_random_form
    render({ :template => "calc_templates/random_form.html.erb" })
  end
  def calc_random
    # params
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @result = rand(@lower..@upper)

    render({ :template => "calc_templates/random_results.html.erb"})
  end
end

