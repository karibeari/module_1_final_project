# My Trails
> A CLI app for hikers.

<!-- [![NPM Version][npm-image]][npm-url] -->
[![Build Status][travis-image]][travis-url]
[![Downloads Stats][npm-downloads]][npm-url]

My Trails is a command line application created to help hikers in a few different ways.  
Users can find new trails in their area, keep track of what they have hiked,
trails they might want to hike, and connect with new hiking buddies.   

![](header.png)

## Installation

OS X & Linux:

```sh
  * Clone the github [repository](https://github.com/karibeari/module_1_final_project)
  * Open a terminal and navigate to the parent folder
  * Run 'bundle install'
  * Run 'rake run'
```
<!-- This site was built using [GitHub Pages](https://pages.github.com/). -->


## Usage

Create a user profile and search for hiking trails located near your home city, or
look through the list of all the trails. Once you've found one you are interested
in, you can add that trail to your wish list.  Once a trail is in your wish
list you can find a buddy who has the same trail in their wish list and make a new
friend!  Once you've finished a trail, you can move it to your list of completed
hikes.  This way, you can keep track of what you have done and track statistics
like the total miles you've hiked so far.

<!-- _For more examples and usage, please refer to the [Wiki][wiki]._ -->

## Development setup

This project is still in development (obviously).  But if you would like to contribute
please feel free to fork our [repository](https://github.com/karibeari/module_1_final_project) and submit a pull request!  Just clone down the repository,
navigate to the parent folder and run the program by entering 'bundle install' and 'rake run' into the terminal. We included a console, which can be run by entering 'rake console' into your terminal. From here you can directly call any of our methods, most of which can
be found in the lib/models/user.rb.

The User class is joined to the to Trail class through List.  If you are curious about
the details of how these models relate to one another, just look at the first two lines
of code for each class.  

If you are curious about out database, we are using [ActiveRecord](https://guides.rubyonrails.org/active_record_basics.html) to handle the
heavy lifting.  You can learn about the tables we have created by checking out the
migrations we wrote for each table/class in db/migrate/.

Any help would be most appreciated:)
<!--

```sh
make install
npm test
``` -->

## Release History

* 0.0.1
    * Work in progress

## Meta

Ben Reilly – [@iBenthinkin](https://twitter.com/iBenthinkin) – benjamin.reilly@gmail.com
[https://github.com/Ibenthinkin](https://github.com/Ibenthinkin)



Distributed under the MIT license. See ``mit`` for more information.

## Contributing

1. Fork it (<https://github.com/karibeari/module_1_final_project/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request

<!-- Markdown link & img dfn's -->
<!-- [npm-image]: https://img.shields.io/npm/v/datadog-metrics.svg?style=flat-square
[npm-url]: https://npmjs.org/package/datadog-metrics
[npm-downloads]: https://img.shields.io/npm/dm/datadog-metrics.svg?style=flat-square
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[wiki]: https://github.com/yourname/yourproject/wiki -->
