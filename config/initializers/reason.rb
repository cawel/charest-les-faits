if (Reason.count == 0)
  Reason.new({:label => 'corruption'}).save!
  Reason.new({:label => 'collusion'}).save!
  Reason.new({:label => 'transparence'}).save!
  Reason.new({:label => 'vision'}).save!
  Reason.new({:label => 'gestion'}).save!
end
