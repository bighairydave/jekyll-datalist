# jekyll-datalist
Example of plugin to generate pages from a data file.

## Installation

Put the 4 files in the appropriate locations of a new Jekyll installation, creating the books, _data and _plugins directories as necessary.

When you build your site, Jekyll will create a page for each book in your list.

The page at books/index.html will be an index of all your book pages.

Jekyll's default theme includes a navigation element that automatically includes every page that has a title in your navigation. You probably want to get rid of this. It's in _includes/header.html: the div with class name "trigger".

## Changing the fields in the data file

This would be more useful with more fields for price, date, cover image, publisher etc. 

To do this, make changes in generator.rb. On line 5, replace `book['title'], book['author'], book['isbn']` with code appropriate for your own data fields.

Now make corresponding changes to the BookPage class:

- On line 11, make the list of arguments correspond to the changes you made to line 5 (ie. update the `title, author, isbn` to match your new data fields).
- Change the `self.data` lines so that there is one for each data field.

## Why doesn't it work on Github Pages?

Github Pages doesn't permit the use of plugins. Solutions include hosting your site somewhere else, or searching the web for one of the many pages that describes a workaround.

