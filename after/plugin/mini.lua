local animate = require('mini.animate')
animate.setup({
  scroll = {
    enable = true,
    timing = animate.gen_timing.linear({ duration = 50, unit = 'total' }),
  },
  cursor = {
    enable = true,
    timing = animate.gen_timing.linear({ duration = 100, unit = 'total' }),
  },

})
