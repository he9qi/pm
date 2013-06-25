class FeedbackCellView < UITableViewCell

  attr_reader :category_image_view, :content_label
  
  def initWithStyle(style, reuseIdentifier: identifier)
    super.tap do
      self.selectionStyle = UITableViewCellSelectionStyleNone

      self.contentView.stylesheet = Teacup::Stylesheet[:feedback_cell]
       layout(self.contentView, :content_view) do
         subview(UIView, :category_image_container) do
           @category_image_view = subview(UIImageView, :category_image_view)
         end
         @content_label = subview(UILabel, :content)
       end
    end
  end

  def fill(item)
    @category_image_view.image = item.category_icon_uiimage
    @content_label.text        = item.content
  end

  def layoutSubviews
    super
    sublayers = self.contentView.layer.sublayers
   
    sublayers[0].frame = CGRectMake(0, 0, 55, 55)
    sublayers[1].frame = CGRectMake(60, 0, self.contentView.size.width-60, 55)
  end
  
end