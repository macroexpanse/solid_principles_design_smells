class Report
  def body
    generate_reporty_stuff
  end

  def print(formatter: JSONFormatter.new)
    formatter.format(body)
  end
end

# Changing the formatter is easy

report = Report.new
report.print(formatter: XMLFormatter.new)


# http://blog.groupbuddies.com/posts/19-solid-principles-in-ruby
