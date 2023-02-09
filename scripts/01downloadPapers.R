# test API dowload --------------------------------------------------------

library(httr)
r = content(GET('http://dx.doi.org/10.1002/jbm4.10713',
                add_headers(Accept = 'application/vnd.crossref.unixsd+xml')
                ),as = "text"
            )
r

library(xml2)
XML::xmlParse(r)

XML::toHTML(r)
