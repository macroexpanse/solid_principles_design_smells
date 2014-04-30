class Report
  def body
    generate_reporty_stuff
  end

  def print
    body.to_json
  end
end


# http://blog.groupbuddies.com/posts/19-solid-principles-in-ruby
