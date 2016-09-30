
## **Discussion**

### **Markdown**

Markdown is a markup language that has easy-to-use syntax for styling text. Users can use Markdown to format words as bold or italic, make headers with different sizes, make links to other websites, create images, create blockquotes, make code blocks, create lists and so on. When I wrote this paper, I used command: 

~~~
**Markdown**
~~~

to make the words as bold and used 

~~~
### Markdown
~~~

to make headers with different sizes. The number of #s indicates the size of header. I also used

~~~
![description](website links)
~~~

to create images and used

~~~
[description](website links)
~~~

to create links of websites. To generate code blocks, I just put ~~~ before and after the code.

All of these functions in Markdown make my paper more explicit and interpretable for readers after it is converted to HTML file. Markdown can do so many other things. The things listed above are what I did when I wrote this paper and they are only a small part of Markdown’s functions. One of the advantages of Markdown is that its syntax is relatively easy to learn and very interpretable for users. When I wrote this paper in Markdown, I felt very comfortable with all the syntax. The second advantage is that Markdown is fast. When I wrote this paper in Markdown, the simple formatting saved me a lot of time and speeded up my workflow. The third advantage is that Markdown files can be easily converted into HTML files by using Pandoc, which I’ll introduce in the next part. HTML has relatively complex syntax that can be sometimes cumbersome but Markdown makes the process easier. When users convert Markdown files into HTML files, all the images, code blocks, links and so on will be perfectly translated. Markdown is also very flexible, which means it can be easily converted to many other formats as needed. Moreover, users can use Markdown in any device, software, or web application that supports plain text, which makes Markdown portable and popular. 

![Markdown Logo](https://raw.githubusercontent.com/yukunhe/stat159-fall2016-project1/master/images/markdown-logo.png)


### **Pandoc**

Pandoc is a universal document converter. It is widely used to convert files from one markup format into another. Pandoc has many advantages. The first advantage that I want to introduce is that it has large range of supported file formats. Pandoc can easily convert documents in a lot of formats including markdown, textile, HTML, Latex, Microsoft Word docx and so on to the other formats including HTML, Word processor formats, TeX, PDF and so on. For example, we can use Pandoc to convert markdown files into Microsoft Word docx files or to convert textile files into HTML files. When I wrote this paper, I used Pandoc to convert the paper from markdown file into HTML file to make online readers easier to read. The second advantage of Pandoc is that it understands many useful markdown syntax extensions. To be more specific, the tables, footnotes, graphs, code blocks, smart quotes and so on in the markdown files can be understood by Pandoc and well shown in the converted file that users want. When I wrote this paper, I put a image of Pandoc logo and a code block of Pandoc command in the markdown file and when I used Pandoc to convert the markdown file to HTML file, the graph and the code block are perfectly shown in the HTML file. The third advantage is that Pandoc is easy to use even for a new user. It can be free downloaded and the command of converting files is pretty simple. Since Pandoc can often figure out the input and output formats from the filename extensions, users could have just used:

~~~
pandoc paper.md -s -o paper.html
~~~

to convert a markdown file into a HTML file and this is what I did when I converted the paper from markdown file to HTML file. When users want to convert files in other formats, simply change the filename extensions and the files will be correctly converted to the format users want.

![Pandoc Logo](https://raw.githubusercontent.com/yukunhe/stat159-fall2016-project1/master/images/pandoc-logo.png)


### **Makefile**

Make is a widely used tool for constructing large projects. More specifically speaking, Make helps in the process of compiling several small projects into a large project and managing computer programs consisting many component files. Makefile is a text file with the name “Makefile” that sets rules to determine which parts of a program need to be recompiled, and issues command to recompile them. And Make reads its instruction from Makefile and does what Makefile sets to do. To set rules in a Makefile, the structure is:

~~~
target (target file): dependencies (source file)
    commands
~~~

The code above in a Makefile tells Make how to execute a series of commands in order to build a target file from source files. Makefile is very useful in the reproducible workflow because it manages dependencies in a build process, which means the large project will be changed accordingly and automatically when its component file is changed. For example, when I wrote this paper, I divided this paper into four sections and I wrote each section in an individual Markdown file. Then I wrote a Makefile to compile the four Markdown files into one Markdown file, which is my final work. The command to compile files is:

~~~
A.md: B.md C.md
        cat B.md C.md > A.md
~~~

The advantage of using Makefile is that when I make a change in any component Markdown file and run Make in the Terminal, my final compiled Markdown file will be changed accordingly. Makefile is very important to maintain the consistency of a large project and its component files and it is very useful in the reproducible workflow. If I want to further convert the file from a Markdown file to an HTML document using Pandoc, I could have just use:

~~~
A.html: A.md
        pandoc A.md -s -o A.html
~~~

There are also special commands in Makefile such as "all" and "clean". 

~~~
all: (output target file)
~~~

The command above tells Make to run multiple rules to the final output target file. 

~~~
clean:
     commands
~~~

The code above tells Make to remove certain output files.


### **Git**

Git is a widely used version control system and GitHub is a Git repository hosting service. It is very easy to use Git to add files and push files to GitHub and pull files from GitHub. To use Git, users can directly write commands in the Terminal. For example, when I make a change to some files and I want to add the new files to Github repository, I simply first write commands in the Terminal:

~~~
git pull 
~~~

to make sure the latest changes in the GitHub repository are downloaded. If there are conflicts between the files in GitHub repository and my recently changed files, running the commands above can tell me what and where the conflicts are so that I am able to reconcile the differences. Then I can run the command:

~~~
git add newfile.md
~~~

to add my changed file to Git. I can also write a comment about what I add by:

~~~
git commit -m "changed file"
~~~

The last step is to upload the changed file to GitHub.

~~~
git push
~~~

The most powerful feature of Git is its branching model. The branching model allows users to have multiple local branches that can be entirely independent of each other. The branches can be easily created, merged and deleted, which facilitates the workflow. Using feature branches is more reliable than directly editing production code and it also makes the code more organized. For example, if I already have some code in the master branch, and I want to make some major changes to the existing code, I can make another branch with command:

~~~
git branch newbranch
~~~

and to create a copy of all the files in master. I can now move into the new branch with commands:

~~~
git checkout newbranch
~~~

and start to work on the code that I want to change with no worries about messing up the original code in the master branch. The branching model of Git is very useful in the reproducible workflow because users can work on components of projects in different independent branches and then merge those branches. After I make some change in code, I want to merge the new branch into the master branch by using command:

~~~
git merge newbranch
~~~

After merging the new branch into the main branch, I can do the git pull, git add, git commit and git push commands that I introduced above to upload everything to GitHub. 

![Git Logo](https://raw.githubusercontent.com/yukunhe/stat159-fall2016-project1/master/images/git-logo.png)


### **GitHub**

GitHub, as mentioned above, is a Git repository hosting service. GitHub consists of repository, fork and branch. Repository is a folder for users to store files and code inside and fork is used to copy other people’s repository into users’ own repository.  GitHub not only makes users be able to save code and files online, but also allows all the developers work the project as a team. By using GitHub, all the developers can write their own part of code and see what changes have been made by the others at the same time, and then push and merge the work together. I used GitHub to store all of my works including images, Markdown files and HTML files. Every time I run the Git commands mentioned above, I am able to update and store all of the changes in my local files to the GitHub online to make sure readers can get access to my up-to-date work. 

![GitHub Logo](https://raw.githubusercontent.com/yukunhe/stat159-fall2016-project1/master/images/github-logo.png)


### **Resources**

I used tools and online resources to do the project. The tools I used includes Pandoc, Markdown, Git, GitHub, Makefile and the online recourses includes Stat159 course website and the links below.

[Stat159 course website](http://gastonsanchez.com/stat159/)

[About Pandoc](http://pandoc.org/index.html)

[Git Reference](http://gitref.org/index.html)

[Tutorial about basic GNU Make](https://github.com/unix-tools/tutorial-makefiles)

![Stat159 Logo](https://raw.githubusercontent.com/yukunhe/stat159-fall2016-project1/master/images/stat159-logo.png)


### **My Experience**

In this project, the easy part is the process of introducing the functions, advantages and commands of each tool. Since I am relatively familiar and clear with Markdown, Pandoc, Makefile, Git and GitHub and there are also many online resources that help me understand those tools more comprehensively, I feel the process of writing the discussion relatively smooth. However, there are also some challenging parts. I think the process of writing a Makefile and building up the structure of the paper in the GitHub is challenging for me. Writing the Makefile is especially challenging for me because it is the most important thing in the whole project which combines all of my separate works into one and convert the Markdown file into HTML file. To write the Makefile requires me to be very detail-oriented so that I can make the file path and file formats in a correct way. Moreover, building the structure in GitHub is also quite challenging and requires patience because I need to make sure that every file is generated inside the correct folder. In the process of writing Makefile and building structure in GitHub, I encountered a problem that the paper.html file was generated outside of the folder called paper but I wanted it to be inside the folder. I was stuck with it for a while and tried to rewrite the file path in the Makefile and finally I fixed the problem. For me, the most time consuming part is to write the discussion of each tool. I tried to introduce each tool comprehensively and explicitly and I searched a lot of online resources to make my discussion more professional. When I was writing the Makefile and constructing the project structure on GitHub, I got help from the GSI about Makefile syntax error and Git command error. The project took about eight hours to complete but it is very rewarding. 


