# My Nvim config based on [nvchad](https://github.com/NvChad/NvChad)

## nvchad官网

  [NvChad](https://nvchad.github.io/)
  [Nvchad-github](https://github.com/NvChad/NvChad)

## 初始安装

```bash
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

 nvim +'hi NormalFloat guibg=#1e222a' +PackerSync  

  git clone https://github.com.cnpmjs.org/NvChad/NvChad ~/.config/nvim --depth 1
  nvim +'hi NormalFloat guibg=#1e222a' +PackerSync

  # gitcode版，版本比较老
  git clone https://gitcode.net/mirrors/NvChad/NvChad ~/.config/nvim --depth 1
  nvim +'hi NormalFloat guibg=#1e222a' +PackerSync
```

## 配置packer.nvim的国内镜像

```bash
  default_url_format = "https://gitcode.net/mirrors/%s"

  default_url_format = "https://github.com.cnpmjs.org/%s"
```

## 安装自定义配置

```bash
cp lua/custom -r ~/.config/nvim/lua/
```

## 同步插件

```vim
:PackerSync
```


