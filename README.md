#The Alaska design template for Voog

##Setup the developing environment
To modify this template [Node.js](http://www.nodejs.org/), [Node Package Manager](https://www.npmjs.org/), [Grunt](http://www.gruntjs.com/) and [Bower](http://www.bower.io/) must be installed.

To set up the local developing environment, clone this repository and run the following commands:

* Install Grunt dependencies: ```npm install```
* Install Bower dependencies: ```bower install```
* Run Grunt tasks: ```grunt```

##Watch and update modifications
* To watch and update modified files in real time (on the default site) start the Grunt watcher task:
  * Note: default site is the first site defined in *.voog* configuration file.
  * Example: ```grunt watch``
* To watch specific site start the Grunt watcher with *--site* parameter value.
  * Note: possible *--site* values are defined in the *.voog* configuration file.
  * Example: ```grunt watch --site=test```
