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

License
-------

SEED is licensed using the BSD 3-Clause license.
