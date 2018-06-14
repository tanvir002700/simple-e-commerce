ELASTICSEARCH_CONFIG = Proc.new do
  host = ENV['ELASTIC_HOST']
  port = ENV['ELASTIC_PORT']

  elastic_ready = host.present? and port.present?
  elasticsearch_url =
    if elastic_ready
      "http://#{host}:#{port}"
    else
      "http://localhost:9200"
    end
  elasticsearch_url
end

Elasticsearch::Model.client = Elasticsearch::Client.new(url: ELASTICSEARCH_CONFIG.call)
