docker build -t introqcd .
docker run --rm -it -v $PWD:/work -w /work introqcd \
	jupytext --execute IntroLQCDjpv1.ipynb

