Rails.application.routes.draw do
  #square
  get("/square/new", { :controller => "application", :action => "blank_square_form" })
  get("/square/results", { :controller => "application", :action => "calc_square" })
  
  #square root
  get("/square_root/new", { :controller => "application", :action => "blank_root_form" })
  get("/square_root/results", { :controller => "application", :action => "calc_root" })

  #payment
  get("/payment/new", { :controller => "application", :action => "blank_payment_form" })
  get("/payment/results", { :controller => "application", :action => "calc_payment" })

  #random
  get("/random/new", { :controller => "application", :action => "blank_random_form" })
  get("/random/results", { :controller => "application", :action => "calc_random" })

end

