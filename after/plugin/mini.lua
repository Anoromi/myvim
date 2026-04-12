local animate = require('mini.animate')
animate.setup({
  scroll = {
    enable = false,
    timing = animate.gen_timing.linear({ duration = 50, unit = 'total' }),
  },
  cursor = {
    enable = false,
    timing = animate.gen_timing.linear({ duration = 100, unit = 'total' }),
  },

})
