### Info

The source of the stylesheet for my [/r/sddm_themes](https://reddit.com/r/sddm_themes) subreddit.

[![Build Status](https://img.shields.io/travis/AlfredoRamos/clean-reddit-theme.svg?style=flat-square&maxAge=3600)](https://travis-ci.org/AlfredoRamos/clean-reddit-theme) [![Latest Stable Version](https://img.shields.io/github/tag/AlfredoRamos/clean-reddit-theme.svg?style=flat-square&label=stable&maxAge=3600)](https://github.com/AlfredoRamos/clean-reddit-theme/releases) [![License](https://img.shields.io/github/license/AlfredoRamos/clean-reddit-theme.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/clean-reddit-theme/master/LICENSE)

An updated precompiled CSS file can be found at [clean-reddit-theme.css](https://gist.github.com/AlfredoRamos/f491378eaf17b43eadf117fbb508289d)

### Tools

- SASS processor [[docs](http://sass-lang.com/install)]
- GraphicsMagick (optional) [[docs](http://www.graphicsmagick.org/README.html)]

### Build

Using `sass` Ruby gem.

```shell
mkdir build
sass -Ct compressed scss/style.scss build/style.css --sourcemap=none
```

**Note:** The stylesheet must be always be compressed because of the reddit's 100 kb file limit. More info:

- https://redd.it/2mv7vu
- https://redd.it/3cmm0d
- https://redd.it/2mg2c8
- https://www.reddit.com/r/csshelp/wiki/index

### Usage

Copy the content of the generated `style.css` file to your reddit stylesheet customization page.

```
reddit.com/r/<YOUR_REDDIT>/about/stylesheet/
```

Making a smaller `PNG` image using GraphicsMagick command line tool:

```shell
gm convert -gravity center -background transparent -resize x50 -extent 50x50 images/header_image.png dist/header_image_50x50.png
```

Making mobile icon:

```shell
gm convert -gravity center -background transparent -resize x250 -extent 256x256 images/header_image.png dist/mobile_icon_256x256.png
```

For more info, refer to the GraphicsMagick's [convert](http://www.graphicsmagick.org/convert.html) manpage.
