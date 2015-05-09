class CalculationsController < ApplicationController

  def instructions

  end

  def sqrt
    @number = params[:id].to_i
    @sqrt= Math.sqrt(@number)
    render('sqrt.html.erb')
  end

  def square
    @number = params[:id].to_i
    @square = @number * @number
    render('square.html.erb')
  end

  def pmt

    @apr = params[:apr].to_i
    @years = params[:years].to_i
    @principal = params[:principal].to_i

    @monthly_payment = (@principal*@apr/100 + @principal)/(@years*12)
  end

end

