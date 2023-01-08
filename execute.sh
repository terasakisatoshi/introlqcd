docker build -t introqcd .
docker run --rm -it -v $PWD:/work -w /work introqcd \
	/bin/bash -c 'jupytext --execute IntroLQCDjpv1.ipynb'
