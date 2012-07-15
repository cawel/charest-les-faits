atom_feed :language => 'fr-CA' do |feed|
  feed.title @title
  feed.updated @updated

  @items.each do |item|
    next if item.updated_at.blank?

    feed.entry( item ) do |entry|
      entry.url example_url(item)
      entry.title item.headline
      entry.content item.excerpt
      # the strftime is needed to work with Google Reader.
      entry.updated(item.updated_at.strftime("%Y-%m-%dT%H:%M:%SZ")) 
    end
  end
end
