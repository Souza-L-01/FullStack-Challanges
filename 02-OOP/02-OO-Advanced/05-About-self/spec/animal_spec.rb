require "animal"

describe Animal do
  let(:fox) { Animal.new.name("Fox").color("red").natural_habitat("forest").species("mammal") }
  let(:shark) { Animal.new.name("Shark").species("fish").color("grey").natural_habitat("sea") }


end
x