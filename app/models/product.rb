class Product < ApplicationRecord
  require 'elasticsearch/model'

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  has_many :line_items, dependent: :destroy
end
