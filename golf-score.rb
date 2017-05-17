score_card = [
{par: 5, score: 7},
{par: 4, score: 5},
{par: 3, score: 3},
{par: 4, score: 4},
{par: 4, score: 4},
{par: 3, score: 2},
{par: 4, score: 5},
{ par: 5, score: 5},
{par: 4, score: 5},
{par: 5, score: 7},
{par: 4, score: 4},
{ par: 4, score: 4},
{par: 3, score: 3},
{ par: 4, score: 5},
{ par: 4, score: 5},
{par: 4, score: 4},
{ par: 3, score: 3},
{par: 5, score: 6}
]

# calculates total strokes
total_strokes = 0
# calculates total par:
total_par = 0
over_par = 0
score_card.each do |holes|
  total_strokes += holes[:score]
  total_par += holes[:par]
end

# subtracts par: from strokes
over_par = total_strokes - total_par

over_under = ''
if over_par >= 0
  over_under = "over"
else
  over_under = "under"
  over_par = -over_par
end

puts "Total Strokes: #{total_strokes}"
puts "Total Par: #{total_par}"
puts "You were #{over_par} #{over_under} par"
