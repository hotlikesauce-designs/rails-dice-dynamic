class RollDiceController < ApplicationController
  def landing
    #pp params.fetch("numb_dice")
    @number_of_dice = params.fetch("numb_dice").to_i
    @how_many_sides = params.fetch("numb_sides").to_i
    
    @rolls =[]
  
    @number_of_dice.times do
      die = rand(1..@how_many_sides)
      @rolls.push(die)
    end
    render({:template=>"role_templates/role_outcome"}) #note: don't need to include .html.erb tag
  end
end
