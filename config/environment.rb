# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
MakeSandwich::Application.initialize!

#Interprets enum as strings
#ActiveRecordEnumerations::Column.use_strings = true
