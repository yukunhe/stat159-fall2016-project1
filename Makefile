
all: paper.html

paper.html: paper.md
	pandoc paper/paper.md -s -o paper/paper.html 

paper.md: paper/sections/abstract.md paper/sections/introduction.md paper/sections/discussion.md paper/sections/conclusions.md
	cat paper/sections/abstract.md paper/sections/introduction.md paper/sections/discussion.md paper/sections/conclusions.md > paper.md

clean:
	rm -f paper.html