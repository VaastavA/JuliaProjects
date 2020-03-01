import Pkg; Pkg.add(["RDatasets","Gadfly","Cairo","Fontconfig"])
using RDatasets, Gadfly, Cairo, Fontconfig

iris = dataset("datasets","iris")

p1 = plot(iris, x=:SepalLength, y=:PetalLength, color=:Species)

img1 = PDF("iris_plot1.pdf", 6inch, 4inch)
draw(img1, p1)

p2 = plot(iris, x=:Species, y=:PetalLength, Geom.boxplot)

img2 = PDF("iris_plot2.pdf", 6inch, 4inch)
draw(img2,p2)

p3 = plot(iris, x=:PetalWidth, y=:PetalLength, color=:Species)

img3 = PDF("iris_plot3.pdf", 6inch, 4inch)
draw(img3, p3)


describe(iris)
