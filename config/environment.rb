# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ResearchSharingProject::Application.initialize!
Paperclip::Attachment.default_options[:url] = "/system/:class/:attachment/:id/:filename"
