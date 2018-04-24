require("pry")
require_relative("models/criminal")


criminal1 = Criminal.new({
  "name" => "Texas Pete",
  "species" => "Human",
  "bounty value" => "10",
  "danger level" => "High"
  })
criminal1.save()

criminal2 = Criminal.new({
  "name" => "Skeleton",
  "species" => "Human Ramains",
  "bounty value" => "5",
  "danger level" => "Low"
  })
criminal2.save()











binding.pry
nil
