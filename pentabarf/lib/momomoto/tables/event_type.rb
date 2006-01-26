module Momomoto
  class Event_type < Base
    def initialize
      super
      @domain = 'valuelist'
      @fields = {
        :event_type_id => Datatype::Integer.new( {:not_null=>true, :default=>true, :primary_key=>true, :serial=>true} ),
        :tag => Datatype::Varchar.new( {:length=>32, :not_null=>true} ),
        :rank => Datatype::Integer.new( {} )
      }
    end
  end
end