class DiceController < ApplicationController
  def instructions

    render({ :template => "dice_templates/rules" })
  end

  def roll
    @num_dice = params[:num_dice].to_i
    @num_sides = params[:num_sides].to_i
  
    @dice = []
    @num_dice.times do
      @dice << rand(1..@num_sides)
    end

    @sum = @dice.sum

    render({ :template => "dice_templates/play" })
  
  end
end
