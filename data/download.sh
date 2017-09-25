wget http://www.mpi-sws.org/~cristian/data/cornell_movie_dialogs_corpus.zip
# unzip to current folder
unzip -j cornell_movie_dialogs_corpus.zip
# convert from ISO_8859-1
for i in `ls *.txt`; do
    iconv -f 'ISO_8859-1' -t 'utf-8' $i -o $i.utf8
    mv $i.utf8 $i
done
