class Generator
  def self.generate contents, top = true, modifier = -1
    options = []
    contents.split("\n")[0..modifier].each{|o| option, weight = o.split("*"); weight = 1 unless weight; weight.to_i.times {options << option}}
    description = roll_dice(reroll(inject_sub_generators(options[rand(options.size)])))
    #Description.create!(generator: self, description: description) if top
    description.gsub(/\r/,'')
  end

  def self.inject_sub_generators result
    result.gsub(/{([^{]+)}/) { |g| gen, mod = g.gsub(/{|}/,'').split(',');generator = TableGenerator.find_by_name(gen); mod = -1 unless mod; generator ? generator.generate(false, mod.to_i) : g }
  end

  def self.reroll result
    if result.include? '<reroll>'
      result.gsub(/<reroll>/, " & #{generate(false)}")
    else
      result
    end
  end

  def self.roll_dice result
    result.gsub(/\d+d\d+/) {|r| n,dice = r.split('d'); roll(n.to_i,dice.to_i)}
  end

  def self.roll n,d
    (1..n).map{rand(1..d)}.reduce(:+).to_s
  end

end
