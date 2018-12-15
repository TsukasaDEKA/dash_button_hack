# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
window.draw_graph = ->
    ctx = document.getElementById("myChart").getContext('2d')
    # barNum = gon.data_num
    # bgColors = new Array(barNum)
    # bdColors = new Array(barNum)
    # for i in [0...barNum]
    #     bgColors[i] = 'rgba(256, 256, 256, 0.7)'
    #     bdColors[i] = 'rgba(100, 100, 100, 1)'
    myChart = new Chart(ctx, {
        type: 'line',
        # data: gon.data,
        data: {
            labels: gon.label
            datasets: [{
                label: 'Event',
                data: gon.data,
                borderWidth: 10,
                borderColor:"rgba(2,63,138,0.8)",
                lineTension: 0,
                fill: true
            }]
        },
        options: {
          elements: {
            point:{
              radius: 0
            }
          }
          scales: {
              xAxes: [{
                display: true,
                type: 'time',
                time: {
                    unit: 'day'
                }
              }]
              yAxes: [{
                  ticks: {
                      beginAtZero:true,
                      min: 0,
                      max: 2
                  }
              }]
          }
        }
    })
