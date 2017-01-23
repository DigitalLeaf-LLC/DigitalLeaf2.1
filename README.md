# DigitalLeaf 2.0

DigitalLeaf, a home for reliabel content. This is our webpage built from a barebones Rails app.
This app *does not* have a database connected directly (There is no ActiveRecord). Instead, we have decided to use third-party integrations with AWS and DynamoDB to store information.

Having found the constraints of a database to be too restricting, we are trying this no DB (noSQL DB) approach.

* Ruby version

Ruby 2.2 or greater.
Rails 5.0.1

* System dependencies

* Configuration

- Install latest stable version of Ruby.
- Install latest stable version of Rails.
- If running Windows, consider using the Command Prompt with Ruby and Rails
- Clone this repository into a dedicated project directory.
- Note: Make sure gems are updated: `gem update` (this might take a while)
- Run `bundle install` in the project root directory
- Run `bundle update` in the project root directory
- Run `rails s` to start your server and your local website

* Database creation

The `config/initializers/aws.rb` file is used to set up AWS configuration and credentials *Credentials are stored in environment (ENV) variables.*

The `lib/aws_module.rb` file is used to set up the methods used to interact with the AWS resouces.
Controller files must include this module if they wish to interact with said resources.

##Resources

- [Ruby on Rails](rubyonrails.org)
- [Deployment to AWS Elastic Beanstalk](docs.aws.amazon.com/elasticbeanstalk/latest/dg/create_deploy_Ruby_rails.html)
