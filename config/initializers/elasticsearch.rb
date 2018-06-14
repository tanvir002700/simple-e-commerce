ELASTICSEARCH_CONFIG = Proc.new do
  host = ENV['ELASTIC_HOST']
  port = ENV['ELASTIC_PORT']
  puts ENV

  elastic_ready = host.present? and port.present?
  puts "###############33#### elastic ready #{elastic_ready} #{host.present?} #{port.present?}"
  elasticsearch_url =
    if elastic_ready
      "http://#{host}:#{port}"
    else
      "http://localhost:9200"
    end
  elasticsearch_url
end

puts ELASTICSEARCH_CONFIG.call
Elasticsearch::Model.client = Elasticsearch::Client.new(url: ELASTICSEARCH_CONFIG.call)
