% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aggregate.R
\name{aggregate.stars}
\alias{aggregate.stars}
\title{spatially or temporally aggregate stars object}
\usage{
\method{aggregate}{stars}(x, by, FUN, ..., drop = FALSE,
  join = st_intersects, as_points = any(st_dimension(by) == 2, na.rm =
  TRUE), rightmost.closed = FALSE, left.open = FALSE)
}
\arguments{
\item{x}{object of class \code{stars} with information to be aggregated}

\item{by}{object of class \code{sf} or \code{sfc} for spatial aggregation, for temporal aggregation a vector with time values (\code{Date}, \code{POSIXct}, or \code{PCICt}) that is interpreted as a sequence of left-closed, right-open time intervals or a string like "months", "5 days" or the like (see \link{cut.POSIXt}); if by is an object of class \code{stars}, it is converted to sfc by \code{st_as_sfc(by, as_points = FALSE)} thus ignoring its time component.}

\item{FUN}{aggregation function, such as \code{mean}}

\item{...}{arguments passed on to \code{FUN}, such as \code{na.rm=TRUE}}

\item{drop}{logical; ignored}

\item{join}{join function to find matches of x to by}

\item{as_points}{see \link[stars]{st_as_sf}: shall raster pixels be taken as points, or small square polygons?}

\item{rightmost.closed}{see \link{findInterval}}

\item{left.open}{logical; used for time intervals, see \link{findInterval} and \link{cut.POSIXt}}
}
\description{
spatially or temporally aggregate stars object, returning a data cube with lower spatial or temporal resolution
}
