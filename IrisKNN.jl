import Pkg; Pkg.add(["RDatasets","PyPlot"])
using RDatasets, PyPlot

iris = dataset("datasets","iris")
describe(iris)
