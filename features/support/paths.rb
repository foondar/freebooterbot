def path_to(page_name)
  case page_name
  when /the list of table generators/
    table_generators_path
  when /the "(.+)" table generator/
    table_generator_path(TableGenerator.find_by_name($1))
  else
    raise "Can't find mapping from #{page_name} to a path."
  end
end
