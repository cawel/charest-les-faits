if Reason.table_exists? and Reason.all.empty?
  Reason.new({:label => 'Corruption'}).save!
  Reason.new({:label => 'Collusion'}).save!
  Reason.new({:label => 'Manque de transparence'}).save!
  Reason.new({:label => 'Manque de vision'}).save!
  Reason.new({:label => 'Mauvaise gestion'}).save!
end
