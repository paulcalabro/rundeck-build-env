###############################################################################
# NOTES:
#  1. Install Ruby gems for linting code.
#  2. Install Ruby gems for use with Test Kitchen.
#  3. The Ruby gems were last updated on 2021-03-20.
###############################################################################

# frozen_string_literal: true

source 'https://rubygems.org'

###############################################################################
# NOTE: These gems lint code.
###############################################################################
group :linters do
  gem 'rubocop', '1.26.1'
  gem 'yamllint', '0.0.9'
end

group :test_kitchen do
  gem 'test-kitchen', '3.2.2'

  #############################################################################
  # NOTE: These gems provide Test Kitchen driver plugins.
  #############################################################################
  gem 'kitchen-azurerm', '1.10.1'
  gem 'kitchen-docker', '2.12.0'
  gem 'kitchen-ec2', '3.12.0'
  gem 'kitchen-google', '2.2.0'
  gem 'kitchen-ssh', '1.0.3'
  gem 'kitchen-vagrant', '1.11.0'

  #############################################################################
  # NOTE: These gems provide Test Kitchen provisioner plugins.
  #############################################################################
  gem 'kitchen-ansible', '0.56.0'

  #############################################################################
  # NOTE: These gems provide Test Kitchen verifier plugins.
  #############################################################################
  gem 'kitchen-inspec', '2.5.2'
end
