class ServicesViewController < UIViewController
  include CustomNavigationHelper
  include CollectionTableDelegateHelper

  stylesheet :services

  attr_accessor :collection

  layout :root do
    subview(UIView, :container) do
      subview(UIView, :header) do
      end
      @table_view = subview(UITableView, :table_view)
      @table_view.dataSource = self
      @table_view.delegate = self
    end
  end

  def viewWillAppear(animated)
    super(animated)
    hide_navigation_bar(animated)
  end

  def viewDidLoad
    super
    self.title = "service"._
    
    customize_menu_button
    load_data
  end
  
  def load_data
    @requester = ServicesRequester.new self
    @requester.fetch
  end
  
  def hh_request_finished(json_data)
    @collection = Services.new json_data
    @table_view.reloadData
  end
  
end