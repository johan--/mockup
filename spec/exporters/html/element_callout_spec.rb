#!/usr/bin/env ruby
      
# Copyright (c) 2009 Cory Ondrejka. All rights reserved.
# See License.txt for licensing details.

require "#{File.dirname(__FILE__)}/../testing_file_support"

describe BalsamiqControlParser do
  it "properly handles callout" do
    data = <<-EOF
            <mockup version="1.0" skin="sketch">
      <controls>
        <control controlID="2" controlTypeID="com.balsamiq.mockups::CallOut" x="122" y="37" w="96" h="80" zOrder="0" locked="false" isInGroup="-1">
          <controlProperties>
            <text>foody%20blah%0Ablah%20blah%0Afoo%21</text>
          </controlProperties>
        </control>
        <control controlID="3" controlTypeID="com.balsamiq.mockups::CallOut" x="233" y="43" w="-1" h="-1" zOrder="1" locked="false" isInGroup="-1">
          <controlProperties>
            <text>this%20needs%20to%20be%20fixed</text>
            <color>16711680</color>
            <backgroundAlpha>0.5</backgroundAlpha>
          </controlProperties>
        </control>
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
      <link rel="stylesheet" type="text/css" href="callout.css" />
      <script type = "text/javascript" src="basic.js"> </script>
      <script type = "text/javascript" src="callout.js"> </script>
    <title>Balsamiq</title>
    <script type="text/javascript">
      addLoadEvent(function() {draw_callout("CallOut2", "CallOut2canvas", "rgba(252,251,94,1.0)", "1.0")});

      addLoadEvent(function() {draw_callout("CallOut3", "CallOut3canvas", "rgba(255,0,0,0.5)", "0.5")});

    </script>
  </head>

  <body>
    <div class="CallOut" id="CallOut2"
        style="position: absolute; font-size:10pt; text-align: left; left: 122px; top: 37px; width: 96px; 
               padding:5px; outline: none; color: #010101; background-color: transparent; z-index: 0">
      <p>foody blah</p><p>blah blah</p><p>foo!</p>
      <canvas height=200 width=300 id="CallOut2canvas" style="position: absolute;">
      </canvas>
      <div id="CallOut2text"
          style="position: absolute; font-size:10pt; text-align: left; left: 0px; top: 0px; width: 96px; 
                 padding:5px; outline: none; color: #010101; background-color: transparent; z-index: 0">
        <p>foody blah</p><p>blah blah</p><p>foo!</p>
      </div>
    </div>
    <div class="CallOut" id="CallOut3"
        style="position: absolute; font-size:10pt; text-align: left; left: 233px; top: 43px; width: -1px; 
               padding:5px; outline: none; color: #010101; background-color: transparent; z-index: 1">
      <p>this needs to be fixed</p>
      <canvas height=200 width=300 id="CallOut3canvas" style="position: absolute;">
      </canvas>
      <div id="CallOut3text"
          style="position: absolute; font-size:10pt; text-align: left; left: 0px; top: 0px; width: -1px; 
                 padding:5px; outline: none; color: #010101; background-color: transparent; z-index: 1">
        <p>this needs to be fixed</p>
      </div>
    </div>
  </body>
</html>

    EOF
    css = <<-EOF

.CallOut {
	background-color: transparent;
	outline: none
}

canvas {
	background-color: transparent;
}

    EOF
    js = <<-EOF

function draw_callout(divid, canvasid, color, alpha)
{
	var divel = document.getElementById(divid);
	var width = divel.offsetWidth + 20;
	var height = divel.offsetHeight + 20;
	var zindex = parseInt(divel.style.zIndex);

	var canvasel = document.getElementById(canvasid);
	canvasel.style.position = "absolute";
	canvasel.style.top = "-10px";
	canvasel.style.left = "-10px";

	canvasel.width = width;
	canvasel.height = height;
	canvasel.style.width = width + "px";
	canvasel.style.height = height + "px";
	var ctx = canvasel.getContext('2d');
  ctx.fillStyle = color;
  ctx.strokeStyle = "rgba(0,0,0," + alpha + ")";
  ctx.lineWidth = 4;
  ctx.lineCap = "round";
 	ctx.moveTo(width*0.05,height*0.05);
	ctx.quadraticCurveTo(width*0.25,0, width*0.90,height*0.05);
	ctx.quadraticCurveTo(width,height*0.5, width*0.90,height*0.95);
	ctx.quadraticCurveTo(width*0.5,height, width*0.05,height*0.95);
	ctx.quadraticCurveTo(0,height*0.75, width*0.05, height*0.05);	
  ctx.fill();
  ctx.stroke();
}

    EOF
    filename = "callout"
    TestingFileSupport::test_elements(filename, data, html, css, js, false)
  end

end