class AnnouncesViewController < UIViewController
  include CustomNavigationHelper
  include CollectionTableDelegateHelper

  stylesheet :announces

  attr_accessor :collection

  layout :root do
    subview(UIView, :container) do
      subview(UIView, :header) do
        subview(UIView, :header_bar_l)
        @label_month = subview(UILabel, :header_month)
        subview(UIView, :header_bar_r)
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
    self.title = "announce"._
    
    customize_menu_button
    load_data
  end
  
  def load_data
    @requester = AnnouncesRequester.new self
    @requester.fetch
  end
  
  def hh_request_finished(json_data)
    @collection = Announces.new json_data
    @label_month.text = @collection.month_in_text
    @table_view.reloadData
  end
  
end