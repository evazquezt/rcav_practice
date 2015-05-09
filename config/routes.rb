Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square_root/:id", { :controller => "calculations", :action => "sqrt" })

  get("/square/:id", { :controller => "calculations", :action => "square" })

  get("/payment/:apr/:years/:principal", { :controller => "calculations", :action => "pmt" })
end
