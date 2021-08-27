# WeasyPrint 53.1 and 53.2 possible issue
This repository contains a simple HTML file:

```html
<p>Image follows:</p>
<img src="pngtest8rgba.png"/>
```

Which creates:
- [out-53.0.pdf](out-53.0.pdf) when converted using WeasyPrint 53.0 - WORKING
- [out-53.1.pdf](out-53.1.pdf) when converted using WeasyPrint 53.1 - BROKEN
- [out-53.2.pdf](out-53.2.pdf) when converted using WeasyPrint 53.2 - BROKEN

What BROKEN means here:

- The image is not rendered when viewed in macOS Preview (checked Version 11.0 (1018.6.2)) or in Acrobat (, which also pops up a `There was an error processing a page` dialog).
- The image is rendered by the built in Chrome PDF viewer, and the GitHub PDF viewer (perhaps due to other error handling)?

A check using qpdf shows the below output (similar output for both 53.1 and 53.2):
```sh
$ qpdf --check out-53.2.pdf
checking out-53.2.pdf
PDF Version: 1.7
File is not encrypted
File is not linearized
WARNING: out-53.2.pdf (object 13 0, offset 7453): unknown token while reading object; treating as string
WARNING: out-53.2.pdf (object 13 0, offset 7464): unknown token while reading object; treating as string
WARNING: out-53.2.pdf (object 13 0, offset 7470): unknown token while reading object; treating as string
WARNING: out-53.2.pdf (object 13 0, offset 7475): unknown token while reading object; treating as string
WARNING: out-53.2.pdf (object 13 0, offset 7488): unknown token while reading object; treating as string
WARNING: out-53.2.pdf (object 13 0, offset 7495): unknown token while reading object; treating as string
WARNING: out-53.2.pdf (object 13 0, offset 7495): too many errors; giving up on reading object
WARNING: out-53.2.pdf (object 13 0, offset 7503): expected endobj
```

## Steps to reproduce
See [Dockerfile](Dockerfile) for environment and command, and run `./generate-pdfs.sh` to regenerate the files.
