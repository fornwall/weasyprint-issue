# WeasyPrint 53.1 image issue
This repository contains a simple HTML file:

```html
<p>Image follows:</p>
<img src="pngtest8rgba.png"/>
```

Which creates:
- [out-53.0.pdf](out-53.0.pdf) when converted using WeasyPrint 53.0 - WORKING.
- [out-53.1.pdf](out-53.1.pdf) when converted using WeasyPrint 53.1 - BROKEN
- [out-53.2.pdf](out-53.2.pdf) when converted using WeasyPrint 53.2 - BROKEN

See [Dockerfile](Dockerfile) for environment and command, and run `./generate-pdfs.sh` to regenerate the files.
