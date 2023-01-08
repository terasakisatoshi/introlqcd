FROM julia:1.8.4

RUN apt-get update && apt-get install -y \
	python3 \
	python3-pip

ENV JULIA_PROJECT=@.

RUN julia -e 'using Pkg; Pkg.add("IJulia"); Pkg.build()'
RUN pip3 install jupytext ipykernel nbconvert

# docker run --rm -it -v $PWD:/work -w /work kyu jupytext --execute IntroLQCDjpv1.ipynb
