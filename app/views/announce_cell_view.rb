class AnnounceCellView < UITableViewCell

  attr_reader :day_label, :content_label
  
  def initWithStyle(style, reuseIdentifier: identifier)
    super.tap do
      self.selectionStyle = UITableViewCellSelectionStyleNone

      self.contentView.stylesheet = Teacup::Stylesheet[:announce_cell]
       layout(self.contentView, :content_view) do
         @day_label = subview(UILabel, :day)
         @content_label = subview(UILabel, :content)
       end
    end
  end

  def fill(item)
    @day_label.text     = item.day.to_s
    @content_label.text = item.content
  end

  def layoutSubviews
    super
    sublayers = self.contentView.layer.sublayers
   
    sublayers[0].frame = CGRectMake(0, 0, 55, 55)
    sublayers[1].frame = CGRectMake(60, 0, self.contentView.size.width-60, 55)
  end
  
end