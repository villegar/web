---
title: 'trainR: An Interface to the National Rail Enquiries Systems'
author: Roberto Villegas-Diaz
date: '2021-02-08'
slug: trainR-an-interface-to-the-nre-systems
tags:
  - uk-railway
  - nre
Categories:
  - Development
  - R
Description: ''
Tags:
  - Development
  - R
---

<img src="https://raw.githubusercontent.com/villegar/trainR/main/inst/images/logo.png" alt="logo" align="right" height=200px/>

The goal of `trainR` is to provide a simple interface to the 
National Rail Enquiries (NRE) systems. There are few data feeds 
available, the simplest of them is Darwin, which provides real-time 
arrival and departure predictions, platform numbers, delay estimates, 
schedule changes and cancellations. Other data feeds provide historical 
data, Historic Service Performance (HSP), and much more. `trainR` 
simplifies the data retrieval, so that the users can focus on their 
analyses. For more details visit 
https://www.nationalrail.co.uk/46391.aspx.

## Installation

You can install the released version of trainR from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("trainR")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("villegar/trainR", "dev")
```

## Setup
Before starting to retrieve data from the NRE data feeds, you must obtain an access token. 
Visit the following website for details: http://realtime.nationalrail.co.uk/OpenLDBWSRegistration/

Once you have received your access token, you have to store it in the `.Renviron` file; this can be 
done by executing the following command:


```r
trainR::set_token()
```

This will open a text file, `.Renviron`, add a new line at the end (as follows):

```bash
NRE="<token>"
```

`<token>` should be replaced by the access token obtained from the NRE. Save the changes and restart 
your R session.

You only need to perform this configuration once.

## Example (Last rendered on 2021-02-18 10:07)

Load `trainR` to your working environment:

```r
library(trainR)
```

### Arrivals board at Reading Station (RDG)


```r
rdg_arr <- trainR::GetArrBoardRequest("RDG")
print(rdg_arr)
```

```
## Reading (RDG) Station Board on 2021-02-18 10:07:59
## Time   From                                    Plat  Expected
## 10:05  Didcot Parkway                          15    10:02
## 10:06  Swansea                                 10    10:02
## 10:10  London Waterloo                         5     On time
## 10:11  Bedwyn                                  11A   On time
## 10:11  London Paddington                       9     On time
## 10:13  London Paddington                       14    On time
## 10:14  Bristol Temple Meads                    10    On time
## 10:14  London Paddington                       12    On time
## 10:17  London Paddington                       9B    On time
## 10:19  Basingstoke                             2     On time
## 10:27  London Paddington                       7     On time
## 10:28  Cheltenham Spa                          10A   On time
## 10:33  London Paddington                       8B    On time
## 10:35  Newbury                                 1     On time
## 10:39  Bristol Temple Meads                    10    On time
## 10:39  Manchester Piccadilly                   7B    On time
## 10:43  Ealing Broadway                         14    10:51
## 10:45  Carmarthen                              11A   On time
## 10:45  London Waterloo                         6     On time
## 10:48  Redhill                                 15B   On time
## 10:52  London Paddington                       8B    On time
## 10:54  Great Malvern                           10A   On time
## 10:55  London Paddington                       9     On time
## 10:57  Penzance                                11    On time
## 10:59  London Paddington                       7B    On time
## 11:01  Didcot Parkway                          15    On time
## 11:06  Southampton Central                     8B    On time
## 11:10  London Waterloo                         4     On time
## 11:11  London Paddington                       9     On time
## 11:13  London Paddington                       14    On time
## 11:16  London Paddington                       12    On time
## 11:16  London Paddington                       9     On time
## 11:19  Basingstoke                             2     On time
## 11:22  Bedwyn                                  11    On time
## 11:25  London Paddington                       9     On time
## 11:29  Cheltenham Spa                          11    On time
## 11:33  London Paddington                       7A    On time
## 11:33  Redhill                                 5     On time
## 11:36  Newbury                                 1     On time
## 11:38  Plymouth                                11    11:41
## 11:40  Bristol Temple Meads                    10    On time
## 11:40  London Waterloo                         6     On time
## 11:41  Manchester Piccadilly                   8     On time
## 11:43  London Paddington                       14    On time
## 11:45  Swansea                                 11    On time
## 11:51  London Paddington                       7     On time
## 11:55  Great Malvern                           10    On time
## 11:55  London Paddington                       9     On time
## 12:01  Penzance                                11    On time
```

### Departures board at Reading Station (RDG)


```r
rdg_dep <- trainR::GetDepBoardRequest("RDG")
print(rdg_dep)
```

```
## Reading (RDG) Station Board on 2021-02-18 10:08:01
## Time   To                                      Plat  Expected
## 10:08  London Paddington                       10    On time
## 10:12  London Paddington                       11A   On time
## 10:12  London Waterloo                         6     On time
## 10:12  Newbury                                 1     On time
## 10:13  Swansea                                 9     On time
## 10:15  Ealing Broadway                         15    On time
## 10:15  Manchester Piccadilly                   7B    On time
##        via Coventry & Stoke-on-Trent           
## 10:16  London Paddington                       10    On time
## 10:19  Hereford                                9B    On time
## 10:20  Redhill                                 4     On time
## 10:22  Ealing Broadway                         14    On time
## 10:23  Didcot Parkway                          12    On time
## 10:29  Penzance                                7     On time
## 10:34  London Paddington                       10A   On time
## 10:40  Bedwyn                                  8B    On time
## 10:42  London Paddington                       10    On time
## 10:42  London Waterloo                         5     On time
## 10:48  London Paddington                       11A   On time
## 10:52  Ealing Broadway                         14    10:55
## 10:52  Southampton Central                     7B    On time
## 10:53  Cheltenham Spa                          8B    On time
## 10:57  London Paddington                       10A   On time
## 10:58  Bristol Temple Meads                    9     On time
## 11:01  Exeter St Davids                        7B    On time
## 11:04  London Paddington                       11    On time
## 11:07  Basingstoke                             2     On time
## 11:12  London Waterloo                         6     On time
## 11:12  Newbury                                 1     On time
## 11:13  Swansea                                 9     On time
## 11:15  Ealing Broadway                         15    On time
## 11:16  Manchester Piccadilly                   8B    On time
##        via Coventry & Stoke-on-Trent           
## 11:19  Worcester Shrub Hill                    9     On time
## 11:20  Redhill                                 15A   On time
## 11:22  Ealing Broadway                         14    On time
## 11:24  London Paddington                       11    On time
## 11:26  Didcot Parkway                          12    On time
## 11:27  Bristol Temple Meads                    9     On time
## 11:34  London Paddington                       11    On time
## 11:37  Bedwyn                                  7A    On time
## 11:40  London Paddington                       11    11:42
## 11:42  London Paddington                       10    On time
## 11:42  London Waterloo                         4     On time
## 11:48  London Paddington                       11    On time
## 11:52  Ealing Broadway                         14    On time
## 11:53  Cheltenham Spa                          7     On time
## 11:57  Bristol Temple Meads                    9     On time
## 11:58  London Paddington                       10    On time
## 12:04  London Paddington                       11    On time
```