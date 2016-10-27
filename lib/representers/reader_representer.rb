module WebmachineHALJSONAPIDemo
  module ReaderRepresenter
    include Roar::JSON::HAL

    link(:self) { "/readers/#{id}" }

    property :id
    property :email
    property :email
  end
end