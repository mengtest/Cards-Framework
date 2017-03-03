--create by yangxun
Achievement={}

--- <summary>
--- 属性:String
--- </summary>
Achievement.id=nil
--- <summary>
--- 属性:Double
--- </summary>
Achievement.percentCompleted=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Achievement.completed=nil
--- <summary>
--- 属性:Boolean
--- </summary>
Achievement.hidden=nil
--- <summary>
--- 属性:DateTime
--- </summary>
Achievement.lastReportedDate=nil
--- <summary>
--- C#声明:System.String ToString()
--- </summary>
--- <returns>System.String</returns>
function Achievement:ToString()
end
--- <summary>
--- C#声明:Void ReportProgress(System.Action`1[System.Boolean])
--- </summary>
--- <param name="arg_callback">System.Action`1[System.Boolean]</param>
--- <returns>System.Void</returns>
function Achievement:ReportProgress(arg_callback)
end
--- <summary>
--- C#声明:Void SetCompleted(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Achievement:SetCompleted(arg_value)
end
--- <summary>
--- C#声明:Void SetHidden(Boolean)
--- </summary>
--- <param name="arg_value">System.Boolean</param>
--- <returns>System.Void</returns>
function Achievement:SetHidden(arg_value)
end
--- <summary>
--- C#声明:Void SetLastReportedDate(System.DateTime)
--- </summary>
--- <param name="arg_date">System.DateTime</param>
--- <returns>System.Void</returns>
function Achievement:SetLastReportedDate(arg_date)
end
--- <summary>
--- C#声明:System.String get_id()
--- </summary>
--- <returns>System.String</returns>
function Achievement:get_id()
end
--- <summary>
--- C#声明:Void set_id(System.String)
--- </summary>
--- <param name="arg_value">System.String</param>
--- <returns>System.Void</returns>
function Achievement:set_id(arg_value)
end
--- <summary>
--- C#声明:Double get_percentCompleted()
--- </summary>
--- <returns>System.Double</returns>
function Achievement:get_percentCompleted()
end
--- <summary>
--- C#声明:Void set_percentCompleted(Double)
--- </summary>
--- <param name="arg_value">System.Double</param>
--- <returns>System.Void</returns>
function Achievement:set_percentCompleted(arg_value)
end
--- <summary>
--- C#声明:Boolean get_completed()
--- </summary>
--- <returns>System.Boolean</returns>
function Achievement:get_completed()
end
--- <summary>
--- C#声明:Boolean get_hidden()
--- </summary>
--- <returns>System.Boolean</returns>
function Achievement:get_hidden()
end
--- <summary>
--- C#声明:System.DateTime get_lastReportedDate()
--- </summary>
--- <returns>System.DateTime</returns>
function Achievement:get_lastReportedDate()
end
--- <summary>
--- C#声明:Boolean Equals(System.Object)
--- </summary>
--- <param name="arg_obj">System.Object</param>
--- <returns>System.Boolean</returns>
function Achievement:Equals(arg_obj)
end
--- <summary>
--- C#声明:Int32 GetHashCode()
--- </summary>
--- <returns>System.Int32</returns>
function Achievement:GetHashCode()
end
--- <summary>
--- C#声明:System.Type GetType()
--- </summary>
--- <returns>System.Type</returns>
function Achievement:GetType()
end
