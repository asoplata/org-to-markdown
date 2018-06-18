# org-to-markdown
Scripts for using Pandoc to convert Emacs Org-mode files to
GitHub-Flavored Markdown

Emacs' Org-mode (specifically, Org-babel) can convert to Markdown and
even GitHub-Flavored Markdown (see
[ox-gfm](https://github.com/larstvei/ox-gfm)). However, I didn't like the
way it handles the conversion, and I didn't want to have to learn how to
customize just this one conversion type that only works with Emacs. If
you're like me and instead want to use [Pandoc](http://pandoc.org/) for
all your document conversion needs, then you can use these accompanying
shell scripts to have Pandoc convert all your .ORG files to Markdown .MD
files in an easy-to-install way that doesn't require you to know Emacs.
These resulting Markdown files can then be easily exported to other
document types with Pandoc and used with, for example, the [vimwiki
plugin](https://github.com/vimwiki/vimwiki).

### Install
1. [Install Pandoc](http://pandoc.org/installing.html)
2. Clone this repo

### Usage
1. First, convert the .ORG file to "raw" markdown using:

   ```{bash}
   convert-org-to-md.sh my-file.org
   ```

2. Now, you should have a file called `my-file.md`. However, Pandoc adds many
   escape characters, whitespace, and even some HTML tags, so let's clean those
   up by running (Note that we want to clean our new Markdown file, not our old
   Org file):

    ```{bash}
    clean-pandoc-markdown.sh my-file.md
    ```

That's it! Now open your `my-file.md` for full Markdown enjoyment. These output
Markdown files should be fully compatible with Pandoc's document conversion,
which was tested using
[ya-pandoc-template](https://github.com/asoplata/ya-pandoc-template).
