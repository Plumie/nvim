return {
  'goolord/alpha-nvim',
  priority = 100,
  config = function()
    local alpha = require('alpha')
    local dashboard = require('alpha.themes.dashboard')

    dashboard.section.header.val = {
      "    ⠀⠀⠀⠀⠀⢀⠔⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⡀⢄⠄⢄⢄⠤⡠⡠⡠⣀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "    ⠀⠀⡂⠂⠌⠠⠀⠂⠄⠀⠀⠀⠀⠀⠀⠀⠀⢀⠠⡐⠄⢕⢑⠔⢌⠢⡑⡱⡐⡑⡌⢌⠪⡘⠜⡜⡔⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "    ⠀⠀⢂⠁⠠⠀⠂⠁⡁⡂⠂⠀⠀⠀⡀⡰⢈⠢⡁⡐⠐⠠⢑⢑⠅⡕⢌⠢⡊⡢⡊⡢⡑⢌⠪⠢⡑⠌⡃⠕⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "    ⠀⠀⡂⢐⠀⡐⠀⢁⠂⠀⠀⠀⡠⡊⡂⡢⡡⡃⡪⠢⡡⠈⠄⠠⠁⠌⠂⠕⠌⡂⡊⠢⡊⠢⠑⠑⢈⠠⠐⠠⠈⡒⡄⡀⠀⠀⠀⠀⠀⠀",
      "    ⠀⠀⠈⠀⠁⠢⢐⢐⠀⠀⢀⢦⢃⢆⠪⡢⡪⠢⡈⢌⢊⠪⡨⡪⡐⡀⡁⠄⠂⠀⠄⠢⠀⠐⠈⠠⠀⢐⠈⢄⢑⢔⢑⠕⡆⡄⠀⠀⠀⠀",
      "    ⠀⠀⠀⠀⠀⠀⠀⠂⠀⡀⡞⡌⡢⡪⡪⡪⠪⡘⢌⠢⡡⡱⡱⡐⢔⠰⠨⡊⠢⡁⠢⡙⡔⠨⠐⢄⠑⠄⢅⢕⢐⠕⡥⡑⢜⣜⢲⢤⠠⠀",
      "    ⠀⠀⠀⠀⠀⠀⠀⠀⢠⡺⡑⢌⢎⢎⢎⢎⠪⡨⠢⡑⢌⢎⠢⢈⠢⢈⠂⠌⡐⠠⠡⠨⡪⠈⠌⡐⠨⠨⢐⢐⢐⢑⠜⣌⠢⡣⣃⠉⠀⠀",
      "    ⠀⠀⠀⠀⠀⠀⠀⢀⢗⠱⡘⡜⡜⡼⡘⢔⢑⢌⠪⡨⡪⡂⠅⡂⠌⡐⠨⡐⡀⠅⠂⢅⢣⠁⡂⠄⠡⠨⢐⠐⡐⡐⡑⡸⡨⡨⢪⡂⠀⠀",
      "    ⠀⠀⠀⠀⠀⠀⡠⡇⢇⢕⢕⢕⢕⢇⠪⡢⡑⢔⢑⢜⠌⠠⢁⢀⠁⢄⢑⢈⢢⠁⠌⠐⢌⠢⠐⡈⠄⡁⠂⠌⡐⡐⡐⠌⡎⡌⡢⡳⡀⠀",
      "    ⠀⠀⠀⠀⠀⡔⡕⢅⢣⡓⠁⠑⡝⢔⠱⡨⡨⠢⡡⡣⡁⢌⣞⡮⣟⣞⢞⣞⣞⠌⠀⠄⢀⠈⠐⠠⠑⠠⠁⠅⡂⡂⠌⢌⢪⡊⢆⠪⡆⠀",
      "    ⠀⠀⠀⢠⠣⡣⢪⢸⢸⡂⢁⢣⢣⢑⠕⢌⠪⡘⡐⡝⡄⠢⡠⠁⠠⠀⠁⠁⠁⠁⠠⠀⠠⠀⠁⡀⠂⡐⣄⣥⡠⡂⡅⡅⣇⠇⡅⢕⢝⠀",
      "    ⠀⠀⣰⠱⡑⢌⢢⢣⢣⢳⡀⡎⢆⠕⡕⢅⠣⡊⡢⠱⣕⢐⠀⠅⠡⢐⠈⠀⡈⠀⠄⠂⠀⠄⠁⢀⠀⠉⠑⠓⠯⢯⢏⠪⣪⢪⢪⢢⠣⠁",
      "    ⠀⣰⠱⡑⢌⢆⠳⡱⡱⡱⡱⡝⡔⡅⡣⣑⢕⢌⡪⡪⣘⢦⢈⠌⡐⡀⡂⠁⢀⠠⠀⠂⠀⠂⠠⠀⢀⠁⠀⠂⢀⠀⡁⡁⡪⣣⢣⢣⠂⠀",
      "    ⠠⣇⠣⡊⢆⢇⢁⢵⠱⠑⠁⠁⢀⠐⠈⠀⠀⡀⠀⡀⠀⡀⠁⠉⠊⠲⠰⡠⡠⡀⡠⠐⠈⠀⠸⠨⠀⢀⠈⢀⠠⠑⠠⢈⠘⢼⢸⢰⢱⠀",
      "    ⢸⡪⢪⢨⢪⠪⠊⠀⠀⠄⠐⠈⠀⠀⢀⠐⠀⠀⢀⠀⠀⡀⠠⠐⠀⠀⠄⠀⠈⠈⠈⠒⢤⢡⢀⠄⠂⠀⠠⢐⠠⠁⠅⡂⠌⡪⡎⡎⡪⡀",
      "    ⢘⢮⡲⠑⠁⠀⢀⠀⠁⠀⡀⠠⠐⠈⠀⠀⡀⠈⠀⠀⡀⠀⠀⡀⠀⠂⠀⡀⠁⠀⠁⢀⠀⠈⠈⠪⢢⡈⡀⠐⠌⠄⡁⢂⢕⡝⡜⡜⣜⠄",
      "    ⡠⠃⠁⠀⠐⠈⠀⠀⡀⠁⠀⠀⢀⠠⠐⠀⠀⡀⠈⠀⠀⠀⠁⠀⢀⠐⠀⠀⡀⠈⠀⠀⡀⠀⠁⠀⡀⠈⠪⢢⡁⣂⢢⣪⠺⠘⠣⠃⡇⠀",
      "    ⠁⠀⠂⠁⠀⠄⠂⠀⢀⠀⠂⠁⠀⠀⢀⠠⠀⠀⡀⠂⠁⠀⠈⠀⠀⡀⠠⠀⢀⠀⠈⠀⠀⠀⠁⠀⡀⠀⠄⠀⠘⠪⣳⢑⠁⠠⠐⠀⢪⠀",
      "    ⠀⠐⠀⠐⠀⠀⠄⠐⢀⢀⠄⢔⢐⠌⡠⢀⢂⢐⠠⢀⢂⠨⠠⡈⡀⡀⠀⢀⠀⢀⠈⠀⠈⠀⠈⠀⠀⢀⠠⠐⠀⢀⠀⠑⢢⠠⡀⠨⡸⠀",
      "    ⠀⠂⠀⠂⡀⠢⡐⡐⡐⠠⠡⡁⠢⢁⠂⢅⢂⠂⢌⢂⠂⢌⢂⠂⠅⠪⢘⠐⡄⢄⢄⠀⠁⠀⠁⢀⠈⠀⠀⢀⠀⢀⠀⠄⠀⠁⠓⢴⡑⠀",
      "    ⠠⢐⠌⠌⢌⢂⢂⢂⠂⠅⠅⡂⡑⠄⡑⡐⢐⠨⢐⢐⠨⢐⢐⠨⠨⠨⠠⢁⠂⢅⠂⠅⢅⠨⢀⠀⡀⠀⠁⠀⠀⡀⠀⢀⠀⠂⠈⠀⠩⢣",
      "    ⢜⠠⠡⢑⢐⢐⢐⢐⠨⠨⢐⢐⠠⢑⢐⠠⢀⠠⢁⠢⢈⢂⠂⠌⠌⠌⠌⠄⡑⡐⠨⠨⢐⠨⠠⢑⢐⢄⠁⠀⠁⠀⢀⠀⢀⠠⠐⠀⠀⠄",
      "    ⠢⠨⠨⢐⢐⢐⢐⢐⠨⠨⢐⢐⠨⢐⢐⠨⢐⠨⢐⠨⢐⢐⠨⠨⠨⠨⠨⢐⢐⠠⠀⠨⢐⠨⠨⢐⢐⠠⡑⠌⡄⠈⠀⠀⠀⢀⠀⠀⠂⠀",
      "    ⠅⠅⠅⡂⡂⡂⡂⢀⠀⠅⡂⡂⠌⡂⡂⠌⡂⠌⡂⠌⡂⡂⠌⠌⠌⠌⠌⡐⡐⠨⠨⠨⢐⠨⠨⢐⢐⢐⠠⢑⢈⠪⣐⢈⠀⠀⡀⠐⠀⠀",
    }

    dashboard.section.header.opts.hl = "Text"

    dashboard.section.buttons.val = {
      dashboard.button("e", "> New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("s", "> Settings", ":e $MYVIMRC | :cd %:p:h | :Oil<CR>"),
    }

    alpha.setup(dashboard.opts)
  end
}
