#!/usr/bin/env ruby
      
# Copyright (c) 2009 Cory Ondrejka. All rights reserved.
# See License.txt for licensing details.


# Control Symbols
class BalsamiqControl
  CONTROL_SIZE_DEFAULTS = {
  :Accordion => {:w => 150, :h => 218},
  :Arrow => {:w => 150, :h => 100},
  :BreadCrumbs => {:w => 211, :h => 23},
  :BrowserWindow => {:w => 450, :h => 400},
  :Button => {:w => 65, :h => 22},
  :ButtonBar => {:w => 128, :h => 22},
  :Calendar => {:w => 96, :h => 96},
  :CallOut => {:w => 38, :h => 40},
  :BarChart => {:w => 187, :h => 175},
  :ColumnChart => {:w => 187, :h => 175},
  :LineChart => {:w => 187, :h => 175},
  :PieChart => {:w => 195, :h => 187},
  :CheckBox => {:w => 83, :h => 18},
  :ColorPicker => {:w => 26, :h => 28},
  :ComboBox => {:w => 92, :h => 25},
  :StickyNote => {:w => 109, :h => 123},
  :CoverFlow => {:w => 493, :h => 198},
  :DataGrid => {:w => 336, :h => 118},
  :DateChooser => {:w => 106, :h => 29},
  :TitleWindow => {:w => 450, :h => 400},
  :FormattingToolbar => {:w => 270, :h => 29},
  :FieldSet => {:w => 200, :h => 170},
  :HelpButton => {:w => 18, :h => 18},
  :HCurly => {:w => 200, :h => 80},
  :HRule => {:w => 100, :h => 5},
  :HorizontalScrollBar => {:w => 100, :h => 17},
  :HSlider => {:w => 43, :h => 11},
  :VSplitter => {:w => 100, :h => 12},
  :Icon => {:w => 48, :h => 48},
  :IconLabel => {:w => 73, :h => 73},
  :Image => {:w => 141, :h => 144},
  :Label => {:w => 69, :h => 25},
  :Link => {:w => 39, :h => 25},
  :LinkBar => {:w => 242, :h => 25},
  :List => {:w => 100, :h => 126},
  :Menu => {:w => 150, :h => 170},
  :MenuBar => {:w => 217, :h => 29},
  :ModalScreen => {:w => 320, :h => 240},
  :MultilineButton => {:w => 155, :h => 78},
  :NumericStepper => {:w => 41, :h => 26},
  :Paragraph => {:w => 200, :h => 140},
  :MediaControls => {:w => 111, :h => 35},
  :ProgressBar => {:w => 100, :h => 20},
  :RadioButton => {:w => 99, :h => 18},
  :Canvas => {:w => 100, :h => 70},
  :RoundButton => {:w => 32, :h => 31},
  :ScratchOut => {:w => 205, :h => 107},
  :SearchBox => {:w => 94, :h => 25},
  :Map => {:w => 252, :h => 222},
  :TabBar => {:w => 256, :h => 100},
  :TagCloud => {:w => 350, :h => 250},
  :TextArea => {:w => 200, :h => 140},
  :TextInput => {:w => 72, :h => 29},
  :Title => {:w => 218, :h => 62},
  :Tooltip => {:w => 87, :h => 33},
  :Tree => {:w => 280, :h => 230},
  :VCurly => {:w => 180, :h => 140},
  :VRule => {:w => 5, :h => 100},
  :VerticalScrollBar => {:w => 17, :h => 100},
  :VSlider => {:w => 11, :h => 100},
  :HSplitter => {:w => 12, :h => 100},
  :VerticalTabBar => {:w => 200, :h => 194},
  :VideoPlayer => {:w => 300, :h => 200},
  :VolumeSlider => {:w => 72, :h => 16},
  :Webcam => {:w => 177, :h => 145},
  :RedX => {:w => 240, :h => 104}
  }
end