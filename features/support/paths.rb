module NavigationHelpers  
  def path_to(page_name)  
    case page_name  
  
    when /the homepage/  
      root_path  
    when /the list of departments/  
      departments_path  
    when /the new department page/
      new_department_path
    when /the list of posts/  
      posts_path  
    when /the new posts page/
      new_post_path
    when /the list of employees/  
      employees_path  
    when /the new employees page/
      new_employee_path
    else  
      raise "Can't find mapping from \"#{page_name}\" to a path."  
    end  
  end  
end  
World(NavigationHelpers)
