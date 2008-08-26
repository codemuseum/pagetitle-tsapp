class PageObject < ActiveRecord::Base
  alias_method :original_to_xml, :to_xml
  include ThriveSmartObjectMethods

end
