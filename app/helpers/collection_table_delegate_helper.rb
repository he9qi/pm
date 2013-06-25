module CollectionTableDelegateHelper
  #{{{ Table view delegate
  # i = path.indexAtPosition(1)
  def tableView(table_view, heightForRowAtIndexPath: path)
    60.0
  end

  def tableView(tableView, heightForFooterInSection:section)
     # This will create a "invisible" footer
     return 0.01
  end

  # when a row is selected
  def tableView(table_view, didSelectRowAtIndexPath: path)
    i = path.indexAtPosition(1)
    # puts "row selected: #{i}"
  end
  #}}}

  #{{{ Table view datasource
  def tableView(table_view, cellForRowAtIndexPath: path)
    model_name = self.class.to_s.gsub('ViewController', '').downcase.singularize
    model = @collection.models[path.indexAtPosition(1)]
    cell_view_class = Kernel.const_get("#{model_name.capitalize}CellView")
    cellIdentifier = "#{model_name}_cell"
    
    cell = table_view.dequeueReusableCellWithIdentifier(cellIdentifier) || 
       cell_view_class.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier: cellIdentifier)
    cell.fill(model)
    cell
  end

  def tableView(table_view, numberOfRowsInSection: section)
    @collection.models.size
  end

  #def tableView(table_view, willDeselectRowAtIndexPath: path)
  #end

  #def tableView(table_view, willSelectRowAtIndexPath: path)
  #end

  def numberOfSectionsInTableView(table_view)
    1
  end
  #}}}
  
end