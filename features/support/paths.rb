def path_to(page_name)
  case page_name
  when /the list of table generators/
    table_generators_path
  else
    raise "Can't find mapping from #{page_name} to a path."
  end
end
