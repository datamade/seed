SEED
====

Standard Energy Efficiency Database
-----------------------------------

SEED is a project funded by the U.S. Department of Energy to provide a 
standardized platform for reporting upon building energy use across a wide 
portfolio of buildings and data sources.  

A typical use case would be: A city has an ordinance which requires energy 
usage reporting through EPA Portfolio Manager for public and private buidlings 
over a certain minimum square footage.  The city uses SEED to integrate data 
from EPA Portfolio Manager with data from a local information system (property 
tax records, for example), to produce a compliance report indicating the
buildings which have not complied with the ordinance.

Because SEED implements DoE's Building Energy Performance data taxonomy, it is
capable of capturing energy usage changes over time.  Municipalites can use
this feature to measure the effectiveness of energy efficiency measures.

Architecture
------------

SEED is developed using Grails.  The default back-end database is MySQL,
although there's nothing in the platform that firmly ties it to that system.
Users should be able to easily use SEED with any database platform supported by
Hibernate, the underlying data layer.

Reporting is done through Pentaho, distributed separately.

Installation
------------

**Prerequisites**

* [Oracle Java SDK](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
* [Groovy](http://groovy.codehaus.org/)
* [Grails v 2.2.1](http://grails.org/) (a newer version may work but has not been tested) 
* [MySQL](http://www.mysql.com/) (For production setups)

By default, the application is setup to use an embedded [H2
database](http://h2database.com/html/main.html) so you won’t have to worry about
setting up a database server to try out the app. However, by default, the
database will run entirely in memory so once you kill the app, the database will
go away as well.

Once you’ve installed the prerequisites, clone this repository: 

``` bash
$ git clone https://github.com/doe-seed/seed.git
```

You should then be able to change into the directory where the code is the run
the app:

``` bash
$ cd seed
$ grails run-app
```

If you’re interested in persisting the database into a file, you can run the app
in production mode like this:

``` bash
$ grails prod run-app
```

Database configuration
----------------------

For anything other than testing, you’re going to want to use a real database.
There is an example for connecting to a MySQL database located in
[``grails-app/conf/DataSource.groovy``](https://github.com/doe-seed/seed/blob/master/grails-app/conf/DataSource.groovy#L15-L20)
but you should be able to use any DB that there is a JDBC driver for. 

License
-------

SEED is licensed using the BSD 3-Clause license.
