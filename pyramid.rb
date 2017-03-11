# Pyramid Class Conatins functions which return diffrent types of pattern of pyramid 
class Pyramid

  def left_align_star_pyramid(rows)
    output_pattern = ''
    (1..rows).each do |row|
     output_pattern += '*' * row +"\n"
    end
    output_pattern.strip
  end

  def right_align_star_pyramid(rows)
    output_pattern = ''
    (1..rows).each do |row|
     output_pattern += ('*' * row).rjust(rows) +"\n"
    end
    output_pattern.rstrip
  end

  def center_align_star_pyramid(rows)
    output_pattern = ''
    (1..rows).each do |row|
     output_pattern += ('*' * row).center(rows) +"\n"
    end
    output_pattern
  end
end

puts Pyramid.new.left_align_star_pyramid(5)
puts "------------------------------------"
puts Pyramid.new.right_align_star_pyramid(5)
puts "------------------------------------"
puts Pyramid.new.center_align_star_pyramid(5)
