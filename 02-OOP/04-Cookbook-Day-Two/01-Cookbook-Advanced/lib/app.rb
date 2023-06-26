require_relative 'cookbook'    # You need to create this file!
require_relative 'controller'  # You need to create this file!
require_relative 'router'

# csv_file   = File.join(__dir__, 'recipes.csv')
# cookbook   = Cookbook.new(csv_file)
# controller = Controller.new(cookbook)
# Controller.new(Cookbook.new(csv_file   = File.join(__dir__, 'recipes.csv')))
# router 

router = Router.new(Controller.new(Cookbook.new(csv_file = File.join(__dir__, 'recipes.csv'))))
# )

# Start the app
router.run
