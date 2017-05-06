COLORS = 'red green blue yellow purple magenta cyan'.split(' ')
COLORSIZE = COLORS.length
CUSOR_SELECTOR = 'atom-text-editor.editor .cursors .cursor'

module.exports =
  activate: (state) ->
    colorIndex = 0
    cursor = document.querySelector(CUSOR_SELECTOR)
    setInterval(->
      cursor.style['background-color'] = COLORS[colorIndex]
      colorIndex += 1
      if colorIndex >= COLORSIZE
        colorIndex = 0
    , 50)
