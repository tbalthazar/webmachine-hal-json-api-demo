require 'webmachine'
require 'jwt'
require 'roar/decorator'
require 'roar/json/hal'
require 'sqlite3'
require 'sequel'

require 'resources/base_resource'
require 'resources/api_resource'
require 'resources/tokens_resource'
require 'resources/categories_resource'
require 'resources/category_resource'
require 'resources/articles_resource'
require 'resources/article_resource'
require 'resources/article_readers_resource'
require 'resources/readers_resource'
require 'resources/reader_resource'
require 'resources/reader_articles_resource'
require 'resources/access_resource'

require 'helpers/model_helper'

require 'models/user'
require 'models/category'
require 'models/article'
require 'models/reader'
require 'models/access'

require 'representers/error_representer'
require 'representers/category_representer'
require 'representers/categories_representer'
require 'representers/article_representer'
require 'representers/articles_representer'
require 'representers/reader_representer'
require 'representers/readers_representer'
require 'representers/reader_articles_representer'
require 'representers/article_readers_representer'

require 'services/categories/create_service'
require 'services/categories/update_service'
require 'services/categories/delete_service'
require 'services/categories/search_service'
require 'services/accesses/create_service'
require 'services/accesses/delete_service'
require 'services/articles/create_service'
require 'services/articles/update_service'
require 'services/articles/delete_service'
require 'services/articles/search_service'
require 'services/readers/create_service'
require 'services/readers/update_service'
require 'services/readers/delete_service'
