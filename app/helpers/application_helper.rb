module ApplicationHelper
  def get_today_date
    Date.today.strftime("%Y年%m月%d日")
  end
  
  def get_user_count
    User.count
  end
end
