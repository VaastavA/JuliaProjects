#import Pkg; Pkg.add(["RDatasets","PyPlot"])
using RDatasets, PyPlot

iris = dataset("datasets","iris")
colors = ['b','g','r','c','m','y','k','w']
species = Set()

for s in iris.Species
	push!(species,s)
end

species = string.(collect(species))
println(species)
tdf = filter(r -> in(r.Species, species[1]), iris)
println(tdf)

scatter(iris[:SepalLength], iris[:PetalLength])
savefig("my_plot.pdf")
describe(iris)
