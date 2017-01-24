module AwsModule
  require 'time'

  @@dynamo_db ||= Aws::DynamoDB::Client.new()
 #init method to be used for initialisation when the rails application start
 def self.init
#   @@dynamo_table = false
#   if AWS_SETTINGS["aws_dynamo"]

    if !@@dynamo_db
      @@dynamo_db = false
      @@dynamo_db = AWS::DynamoDB::Client.new()
    end
#   @@dynamo_db = AWS::DynamoDB::Resource.new(region: 'us-east-1')
#   end
  end

 #the method that saves to aws database
 def self.save_records_to_db(params)
   return if !@@dynamo_db

   #set the table name, hash_key and range_key from the AmazonDB
#   table = @@dynamo_db.table("TestRecords")

    entry = {
      'table_name': 'TestRecords',
      'item': params
    }

    result = @@dynamo_db.put_item(entry)

=begin
   @@dynamo_table = @@dynamo_db.tables['records']
   @@dynamo_table.hash_key = [:member_id, :string]
   @@dynamo_table.range_key = [:datetime, :string]
   fields = {
       'member_id' => 1, #primary partition key
       'datetime' => Time.now.utc.iso8601, #primary sort key
   }
   fields.merge!(params[:custom_fields]) if params[:custom_fields]
   @@dynamo_table.items.create(fields)
=end

  end
end
