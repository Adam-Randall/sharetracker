module ButtonHelper

  def show_share_button(url)
    link_to(url, class: 'btn btn-default btn-sm') do
      fa_icon "folder-open-o", text: "View"
    end
  end

  def social_button(url, icon)
    link_to(url, class: 'btn-floating btn-large fb-bg waves-effect waves-light') do
      fa_icon("fa-#{icon}", class: "fa fa-#{icon}")
    end
  end

end
