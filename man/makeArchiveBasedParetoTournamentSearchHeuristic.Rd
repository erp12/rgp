% Generated by roxygen2 (4.0.1): do not edit by hand
\name{makeArchiveBasedParetoTournamentSearchHeuristic}
\alias{makeArchiveBasedParetoTournamentSearchHeuristic}
\title{Archive-based Pareto Tournament Search Heuristic for RGP}
\usage{
makeArchiveBasedParetoTournamentSearchHeuristic(archiveSize = 50,
  popTournamentSize = 5, archiveTournamentSize = 3, crossoverRate = 0.95,
  enableComplexityCriterion = TRUE, complexityMeasure = function(ind,
  fitness) fastFuncVisitationLength(ind),
  ndsSelectionFunction = nds_cd_selection)
}
\arguments{
\item{archiveSize}{The number of individuals in the archive, defaults to \code{50}.}

\item{popTournamentSize}{The size of the Pareto tournaments for selecting individuals
for reproduction from the population.}

\item{archiveTournamentSize}{The size of the Pareto tournaments for selecting individuals
for reproduction from the archive.}

\item{crossoverRate}{The probabilty to do crossover with an archive member instead of mutation of an
archive member.}

\item{enableComplexityCriterion}{Whether to enable the complexity criterion in multi-criterial
search heuristics.}

\item{complexityMeasure}{The complexity measure, a function of signature \code{function(ind, fitness)}
returning a single numeric value.}

\item{ndsSelectionFunction}{The function to use for non-dominated sorting in Pareto GP selection.
Defaults to \code{nds_cd_selection}.}
}
\value{
An RGP search heuristic.
}
\description{
The search-heuristic, i.e. the concrete GP search algorithm, is a modular component of RGP.
\code{makeArchiveBasedParetoTournamentSearchHeuristic} creates a RGP search-heuristic that implements
a archive-based Pareto tournament multi objective optimization algorithm (EMOA) that selects on three
criteria: Individual fitness, individual complexity and individual age.
}

