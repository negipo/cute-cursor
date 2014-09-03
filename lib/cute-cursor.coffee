COLORS = 'red green blue yellow purple magenta cyan'.split(' ')
COLORSIZE = COLORS.length

module.exports =
  activate: (state) ->
    view = atom.workspaceView
    colorIndex = 0

    setInterval(->
      cursor = view.getActivePaneView().find('.cursor')
      cursor.css('background-color', COLORS[colorIndex])
      colorIndex += 1
      if colorIndex >= COLORSIZE
        colorIndex = 0
    , 50)
