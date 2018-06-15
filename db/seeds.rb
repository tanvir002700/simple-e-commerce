Product.__elasticsearch__.create_index! force: true

Product.all.each {|p| p.__elasticsearch__.index_document }
