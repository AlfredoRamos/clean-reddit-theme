### Tools

- SASS processor [[docs](http://sass-lang.com/install)]
- GraphicsMagick (optional) [[docs](http://www.graphicsmagick.org/README.html)]

### Build

Using [`sassc`](https://www.archlinux.org/packages/community/x86_64/sassc/):

```shell
sassc -t compressed stylesheet.scss stylesheet.css
```

**Note:** The stylesheet must be always be compressed because of the reddit's 100 kb file limit. More info:

- https://redd.it/2mv7vu
- https://redd.it/3cmm0d
- https://redd.it/2mg2c8
- https://www.reddit.com/r/csshelp/wiki/index

### Usage

Copy the content of the generated `stylesheet.css` file to your reddit stylesheet customization page.

```
reddit.com/r/<YOUR_REDDIT>/about/stylesheet/
```

Making a smaller `PNG` image using GraphicsMagick command line tool:

```shell
gm convert -resize 50x images/header_image.png images/header_image_50.png
```

For more info, refer to the GraphicsMagick's [convert](http://www.graphicsmagick.org/convert.html) manpage.