module Momomoto
  class View_link_type < Base
    def initialize
      super
      @domain = 'valuelist'
      @fields = {
        :link_type_id => Datatype::Integer.new( {} ),
        :language_id => Datatype::Integer.new( {} ),
        :url_prefix => Datatype::Varchar.new( {:length=>1024} ),
        :f_public => Datatype::Bool.new( {} ),
        :tag => Datatype::Varchar.new( {:length=>32} ),
        :name => Datatype::Varchar.new( {} ),
        :rank => Datatype::Integer.new( {} ),
        :language_tag => Datatype::Varchar.new( {:length=>32} )
      }
    end
  end
end
