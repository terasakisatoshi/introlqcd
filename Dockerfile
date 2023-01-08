FROM julia:1.8.4

RUN apt-get update && apt-get install -y \
	python3 \
	python3-pip

RUN pip3 install jupytext ipykernel nbconvert

ENV JULIA_PROJECT=@.

RUN julia -e 'using Pkg; Pkg.add("IJulia"); Pkg.build()'
RUN julia -e 'using Pkg; Pkg.add(["CSV", "DataFrames", "LatticeQCD", "Plots"])'
