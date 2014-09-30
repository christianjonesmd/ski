Scholarometer
=============

XML files including all individuals in Scholarometer[1] discipline 
"surgery" were retrieved on 9/29/2014 sorted by name, h-index, h_s index, 
h_m index, and g index, all as described by the Scholarometer "About"
page[2]. These were retrieved using the Scholarometer API[3], using the 
commands [4]-[8] resulting in 323 authors in each file.  [Of note, 
http://scholarometer.indiana.edu/api/disciplines/discipline/surgery returns 
367 authors and 
http://scholarometer.indiana.edu/api/authors/count?discipline=surgery 
returns 384 authors; the XML files used all have the same info and count, 
so for consistency were used together. These files are the authors*.xml
files named for the metric by which they were sorted; authors.xml itself
is sorted by name.

Files were combined using the script combine.sh and manual command-line
scripting, then deduplicated manually.  Some names in the lists were 
duplicated; it is not certain that these names are unique, but only one 
of each was chosen.  Where these were noted, the highest of any 
discrepancies in metrics were taken.  When metrics were the same, or 
when different author entries had different high marks, the lower 
author id was chosen.

After combining presumed duplicates, 270 total authors remained. Including
the top 100 authors for each metric resulted in a total of 115 authors.  
These were defined as "Scholarometer's top surgery authors"; the file
Scholarometer.csv includes all 270 authors with an "include" field with value
1 for the those top 115.
I am unable to locate copyright information regarding the files created using the Scholarometer API; I am not certain the results are subject to copyright, but I believe that even if so my use of those files is covered under "fair use" as it is used for research and scholarship, for nonprofit educational purposes, and not for commercial gain, is easily and freely obtainable to the public from the original source, is minimally substantial compared to the wholly available work (including only the "surgery" discipline), should not affect the use of the original work as this inclusion is static while the original is dynamically updated, and modified from the original without the goal of superseding it.  Great thanks go to the Scholarometer team for allowing the use of their work.


1. http://scholarometer.indiana.edu
2. http://scholarometer.indiana.edu/about.html
3. http://scholarometer.indiana.edu/data.html
4. http://scholarometer.indiana.edu/api/authors/?discipline=surgery&sortby=name
5. http://scholarometer.indiana.edu/api/authors/?discipline=surgery&sortby=h
6. http://scholarometer.indiana.edu/api/authors/?discipline=surgery&sortby=g
7. http://scholarometer.indiana.edu/api/authors/?discipline=surgery&sortby=h_m
8. http://scholarometer.indiana.edu/api/authors/?discipline=surgery&sortby=h_s
