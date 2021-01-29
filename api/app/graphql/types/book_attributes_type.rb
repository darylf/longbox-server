module Types
  class BookAttributesType < Types::BaseInputObject
    argument :alternate_title, String, required: false
    argument :credit_ids, [ID], required: false
    argument :issue, String, required: false
    argument :series_id, ID, required: false
    argument :cover_image, ApolloUploadServer::Upload, required: false
  end
end
