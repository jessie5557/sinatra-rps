require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end


get("/rock") do
  moves = ["rock","paper","scissors"]
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end

  erb(:zebra_r)

end


get("/scissors") do
  moves = ["rock","paper","scissors"]
  @comp_move = moves.sample

  if @comp_move == "scissors"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "won"
  else
    @outcome = "lost"
  end

  erb(:zebra_s)

end


get("/paper") do
  moves = ["rock","paper","scissors"]
  @comp_move = moves.sample

  if @comp_move == "paper"
    @outcome = "tied"
  elsif @comp_move == "rock"
    @outcome = "lost"
  else
    @outcome = "won"
  end

  erb(:zebra_p)

end
