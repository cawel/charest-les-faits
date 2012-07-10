if defined? Reason
  Reason.delete_all
  Reason.new({:label => 'corruption'}).save!
  Reason.new({:label => 'collusion'}).save!
  Reason.new({:label => 'transparence'}).save!
  Reason.new({:label => 'vision'}).save!
  Reason.new({:label => 'gestion'}).save!
end
