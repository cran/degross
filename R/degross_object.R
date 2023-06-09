#' Object resulting from the estimation of a density from grouped (tabulated) summary statistics
#'
#' An object returned by the \code{\link{degross}} function is a list containing several components resulting from the density estimation procedure.
#'
#' @return A \code{degross} object is a list containing, after convergence of the EM algorithm :
#' \itemize{
#' \item{\code{lpost} & \code{lpost.ni}: \verb{ }}{value of the log-posterior for the complete data based on the expected small bin frequencies \code{n.i} at convergence of the EM algorithm.}
#' \item{\code{lpost.mj} : \verb{ }}{value of the log-posterior for the observed data based on the big bin frequencies \code{freq.j}.}
#' \item{\code{llik.ni}:  \verb{ }}{log-likelihood for the complete data based on the estimated small bin frequencies \code{n.i}.}
#' \item{\code{llik.mj} : \verb{ }}{log-likelihood for the observed data based on the big bin frequencies \code{freq.j}.}
#' \item{\code{moments.penalty} : \verb{ }}{log of the joint (asymptotic) density for the observed sample moments.}
#' \item{\code{penalty} : \verb{ }}{\eqn{\log p(\phi|\tau) + \log p(\tau)}.}
#' \item{\code{Score} & \code{Score.mj}: \verb{ }}{score (w.r.t. \eqn{\phi}) of the log of the observed joint posterior function.}
#' \item{\code{Score.ni}: \verb{ }}{score (w.r.t. \eqn{\phi}) of the log-posterior for the complete data based on the expected small bin frequencies \code{n.i} at convergence of the EM algorithm.}
#' \item{\code{Fisher} & \code{Fisher.ni}: \verb{ }}{information matrix (w.r.t. \eqn{\phi}) based on the log-posterior for the complete data based on the expected small bin frequencies \code{n.i} at convergence of the EM algorithm.}
#' \item{\code{Fisher.mj} : \verb{ }}{information matrix (w.r.t. \eqn{\phi}) based on the log of the observed joint posterior function.}
#' \item{\code{M.j} : \verb{ }}{theoretical moments of the fitted density within a big bin.}
#' \item{\code{pi.i} : \verb{ }}{small bin probabilities (at convergence).}
#' \item{\code{ui} : \verb{ }}{small bin midpoints.}
#' \item{\code{delta} : \verb{ }}{width of the small bins.}
#' \item{\code{gamma.j} : \verb{ }}{big bin probabilities (at convergence).}
#' \item{\code{tau} : \verb{ }}{value of the roughness penalty parameter \eqn{\tau} (\code{tau0} if \code{fixed.tau}=TRUE, estimated otherwise).}
#' \item{\code{phi} : \verb{ }}{vector with the spline parameters (at convergence).}
#' \item{\code{n.i} : \verb{ }}{small bin frequencies under the estimated density (at convergence).}
#' \item{\code{edf} : \verb{ }}{the effective degrees of freedom (or effective number of spline parameters) (at convergence).}
#' \item{\code{aic} : \verb{ }}{-2*(\code{llik.mj} + \code{moments.penalty}) + 2*\code{edf}.}
#' \item{\code{bic} : \verb{ }}{-2*(\code{llik.mj} + \code{moments.penalty}) + \eqn{\log(n)}*\code{edf}.}
#' \item{\code{log.evidence} : \verb{ }}{approximation to the log of \eqn{p(\hat{\phi}_\tau,\hat{\tau} | D)} \eqn{|\Sigma_\phi|^{(1/2)}}.}
#' \item{\code{degross.data} : \verb{ }}{the \link{degrossData} object from which density estimation proceeded.}
#' \item{\code{use.moments} : \verb{ }}{vector of 4 logicals indicating which tabulated sample moments were used as soft constraints during estimation.}
#' \item{\code{diag.only} : \verb{ }}{logical indicating whether the off-diagonal elements of the variance-covariance matrix of the sample central moments were ignored. Default: FALSE.}
#' \item{\code{logNormCst} : \verb{ }}{log of the normalizing constant when evaluating the density.}
#' }
#'
#' @author Philippe Lambert \email{p.lambert@uliege.be}
#' @references
#' Lambert, P. (2021) Moment-based density and risk estimation from grouped summary statistics. arXiv:2107.03883.
#'
#' @seealso \code{\link{degross}}, \code{\link{print.degross}}, \code{\link{plot.degross}}.
#'
#' @name degross.object
NULL

