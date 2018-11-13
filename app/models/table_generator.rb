class TableGenerator < ApplicationRecord
  def generate top = true
    options = []
    contents.split("\n").each{|o| option, weight = o.split("*"); weight = 1 unless weight; weight.to_i.times {options << option}}
    description = roll_dice(reroll(inject_sub_generators(options[rand(options.size)])))
    #Description.create!(generator: self, description: description) if top
    description.gsub(/\r/,'')
  end

  def inject_sub_generators result
    result.gsub(/{([^{]+)}/) { |g| gen = TableGenerator.find_by_name(g.gsub(/{|}/,'')); gen ? gen.generate : g }
  end

  def reroll result
    if result.include? '<reroll>'
      result.gsub(/<reroll>/, " & #{generate(false)}")
    else
      result
    end
  end

  def roll_dice result
    result.gsub(/\d+d\d+/) {|r| n,dice = r.split('d'); roll(n.to_i,dice.to_i)}
  end

  def roll n,d
    (1..n).map{rand(1..d)}.reduce(:+).to_s
  end
end
