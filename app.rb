$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))
require 'webmachine_hal_json_api_demo'

App = Webmachine::Application.new do |app|
  app.routes do
    add [], WebmachineHALJSONAPIDemo::APIResource
    add ['tokens'], WebmachineHALJSONAPIDemo::TokensResource

    add ['categories'], WebmachineHALJSONAPIDemo::CategoriesResource
    add ['categories', :id], WebmachineHALJSONAPIDemo::CategoryResource
    add ['categories', :category_id, 'articles'],
        WebmachineHALJSONAPIDemo::ArticlesResource

    add ['articles'], WebmachineHALJSONAPIDemo::ArticlesResource
    add ['articles', :id], WebmachineHALJSONAPIDemo::ArticleResource
    add ['articles', :article_id, 'readers'],
        WebmachineHALJSONAPIDemo::ArticleReadersResource

    add ['readers'], WebmachineHALJSONAPIDemo::ReadersResource
    add ['readers', :id], WebmachineHALJSONAPIDemo::ReaderResource
    add ['readers', :reader_id, 'articles'],
        WebmachineHALJSONAPIDemo::ReaderArticlesResource

    add ['articles', :article_id, 'grant_access'],
        WebmachineHALJSONAPIDemo::AccessResource
    add ['articles', :article_id, 'revoke_access'],
        WebmachineHALJSONAPIDemo::AccessResource
  end
end
