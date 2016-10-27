require 'sqlite3'
require 'sequel'

module WebmachineHALJSONAPIDemo
  module Database
    def self.setup
      DB.drop_table? :articles, :categories, :users, :readers

      DB.create_table :users do
        primary_key :id
        String :email, unique: true
        String :password
        String :token
      end

      DB.create_table :categories do
        primary_key :id
        String :name, unique: true
      end

      DB.create_table :articles do
        primary_key :id
        String :title
        String :link
        foreign_key :category_id, :categories
      end

      DB.create_table :readers do
        primary_key :id
        String :name
        String :email, unique: true
      end
    end
  end
end
