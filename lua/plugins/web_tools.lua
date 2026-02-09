return {

  {
    "windwp/nvim-ts-autotag",
    event = "LazyFile",
    opts = {
      opts = {
        enable_close = true,
        enable_close_on_slash = true,
      },
    },
  },

  {
    "NvChad/nvim-colorizer.lua",
    event = "LazyFile",
    opts = {
      user_default_options = {
        names = false,
        RGS = true,
        RRGGBB = true,
        AARRGGBB = true,
        rgb_fn = true,
        hsl_fn = true,
        css = true,
        css_fn = true,
        mode = "background",
        tailwind = true,
      },
    },
  },
}
