### **Pandoc**

Pandoc is a universal document converter. It is widely used to convert files from one markup format into another. Pandoc has many advantages. The first advantage that I want to introduce is that it has large range of supported file formats. Pandoc can easily convert documents in a lot of formats including markdown, textile, HTML, Latex, Microsoft Word docx and so on to the other formats including HTML, Word processor formats, TeX, PDF and so on. For example, we can use Pandoc to convert markdown files into Microsoft Word docx files or to convert textile files into HTML files. In this paper, I used Pandoc to convert the paper from markdown file into HTML file to make online readers easier to read. The second advantage of Pandoc is that it understands many useful markdown syntax extensions. To be more specific, the tables, footnotes, graphs, code blocks, smart quotes and so on in the markdown files can be understood by Pandoc and well shown in the converted file that you want. In this paper, I put a graph of Pandoc logo in the markdown file and when I use Pandoc to convert the markdown file to HTML file, the graph is perfectly shown in the HTML file. The third advantage is that Pandoc is easy to use even for a new user. It can be free downloaded and the command of converting files is pretty simple. Since Pandoc can often figure out the input and output formats from the filename extensions, users could have just used:

~~~
pandoc paper.md -s -o paper.html
~~~

to convert a markdown file into a HTML file and this is what I did when I worked with this paper.

![Pandoc Logo](https://github.com/yukunhe/stat159-fall2016-project1/blob/master/images/pandoc-logo.png)
