# Pyramid Class Conatins functions which return diffrent types of patterns of pyramid
class Pyramid

  def pyramid(rows, align)
    output_pattern = ''
    (1..rows).each do |row|
     output_pattern += ('*' * row).send(align.to_sym, rows).rstrip() +"\n"
    end
    output_pattern.rstrip
  end
  def left_align_star_pyramid(rows)
    pyramid(rows, 'ljust')
  end

  def right_align_star_pyramid(rows)
    pyramid(rows, 'rjust')
  end

  def center_align_star_pyramid(rows)
    pyramid(rows, 'center')
  end
end
