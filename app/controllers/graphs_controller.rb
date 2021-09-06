class GraphsController < ApplicationController
  def index
    category = ['1', '2', '3', '4', '5']
    current_quantity =[
      [760, 801, 848, 895, 965],
      [733, 853, 939, 980, 1080],
      [714, 762, 817, 870, 918],
      [724, 802, 806, 871, 950],
      [834, 836, 864, 882, 910]
    ]
    

    @graph = LazyHighCharts::HighChart.new('graph') do |f|
      f.title(text: 'ItemXXXの在庫の推移')
      f.xAxis(categories: category)
      f.series(name: '在庫数', data: current_quantity)
      f.chart(type: "boxplot" )
    end
  end
end
