class CardGenerator < ApplicationRecord
  def generate top = true
    contents.split("\n").map do |line|
      roll_dice(inject_sub_generators(line).gsub(/\r/,''))
    end
  end

  def inject_sub_generators result
    result.gsub(/{([^{]+)}/) { |g| gen, mod = g.gsub(/{|}/,'').split(',');generator = TableGenerator.find_by_name(gen); mod = -1 unless mod; generator ? generator.generate(false, mod.to_i) : g }
  end

  def roll_dice result
    result.gsub(/\d+d\d+/) {|r| n,dice = r.split('d'); roll(n.to_i,dice.to_i)}
  end

end
