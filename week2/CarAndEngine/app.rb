require_relative('lib/car')
require_relative('lib/engine')

electric_engine = Engine.new("woosh", 350)
tesla = Car.new("vroommmm", electric_engine)

tesla.start