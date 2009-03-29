#!/usr/bin/env ruby
      
# Copyright (c) 2009 Cory Ondrejka. All rights reserved.
# See License.txt for licensing details.

require "#{File.dirname(__FILE__)}/../testing_file_support"

describe BalsamiqControlParser do
  it "properly handles helpbutton" do
    data = <<-EOF
            <mockup version="1.0" skin="sketch">
      <controls>
        <control controlID="6" controlTypeID="com.balsamiq.mockups::HelpButton" x="31" y="13" w="-1" h="-1" zOrder="0" locked="false" isInGroup="-1"/>
      </controls>
    </mockup>


    EOF
    html = <<-EOF
    <?xml version="1.0" encoding="UTF-8"?>
<!-- Generated by Balsamiq Exporter -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="reset.css" />
    <title>Balsamiq</title>
    <script type="text/javascript">
    </script>
  </head>

  <body>
    <div class="HelpButton" id="HelpButton6" 
          style="position: absolute; left: 31px; top: 11px; width: 18px; height: 18px;
          font-size:16pt; outline: none; background-color:transparent;">
          O
    </div>
    <div class="HelpButton" id="HelpButton6" 
          style="position: absolute; left: 31px; top: 17px; width: 18px; height: 18px;
          font-size:9pt; outline: none; background-color:transparent;">
          ?
    </div>
  </body>
</html>

    EOF
    css = <<-EOF

    EOF
    js = <<-EOF

    EOF
    filename = "helpbutton"
    TestingFileSupport::test_elements(filename, data, html, css, js, false)
  end

end