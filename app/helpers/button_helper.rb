module ButtonHelper

  def show_share_button(url)
    link_to(url, class: 'btn btn-default btn-sm') do
      fa_icon "folder-open-o", text: "View"
    end
  end

end