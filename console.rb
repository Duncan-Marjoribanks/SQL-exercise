require("pry")
require_relative("models/criminal")


criminal1 = Criminal.new({
  "name" => "Texas Pete",
  "species" => "Human",
  "bounty_value" => "10",
  "danger_level" => "High"
  })
criminal1.save()

criminal2 = Criminal.new({
  "name" => "Skeleton",
  "species" => "Human Ramains",
  "bounty_value" => "5",
  "danger_level" => "Low"
  })
criminal2.save()











binding.pry
nil
