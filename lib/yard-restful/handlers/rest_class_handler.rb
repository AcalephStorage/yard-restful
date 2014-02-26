require 'yard'

class YARD::Handlers::Ruby::RestClassHandler < YARD::Handlers::Ruby::Base
  handles :class
  namespace_only

  RESOURCE_OBJECT = YARD::CodeObjects::REST::ResourceObject
  RESOURCES_NAMESPACE = YARD::CodeObjects::REST::RESOURCES_NAMESPACE
  OBJECTS_NAMESPACE = YARD::CodeObjects::REST::OBJECTS_NAMESPACE

  def process
    if statement.source.to_s =~ /^class\s+(#{NAMESPACEMATCH})\s*(?:<\s*(.+)|$)/m
      classname = $1
      classname = classname.gsub(/\s/, '')

      comments = statement.comments
      restful = !comments.nil? && comments.match(/@restful/)
      return unless restful

      if classname =~ /(#{CONSTANTMATCH})$/
        # strip out namespaces
        classname = $1

        if classname =~ /Controller$/
          namespace = RESOURCES_NAMESPACE
        else
          namespace = OBJECTS_NAMESPACE
        end

        klass = register RESOURCE_OBJECT.new(namespace, classname)
        parse_block(statement.last, :namespace => klass)
      end
    end
  end
end
