module TimeCore
  def to_short(is_text = false, need_year = false)
    (arr = ["%y年", "%m月%d日"]).delete_at(0) unless need_year
    is_text ? self.strftime(arr.join) : self.strftime("%F")
  end

  def to_long(is_text = false, need_year = false)
    (arr = ["%y年", "%m月%d日 %R"]).delete_at(0) unless need_year
    is_text ? self.strftime(arr.join) : self.strftime("%F %R")
  end

  def to_full(is_text = false, need_year = false)
    (arr = ["%y年", "%m月%d日 %T"]).delete_at(0) unless need_year
    is_text ? self.strftime(arr.join) : self.strftime("%F %T")
  end

  def to_month(is_text = false)
    arr = ["%Y年", "%m月"]
    is_text ? self.strftime(arr.join) : self.strftime("%Y%m")
  end
end

class ActiveSupport::TimeWithZone
  include TimeCore
end

class Date
  include TimeCore
end

class DateTime
  include TimeCore
end

class Time
  include TimeCore
end

