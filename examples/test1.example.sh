#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FuXi \
--closure \
--output="n3" \
--ns=test=http://xdors.net/demo# \
--dlp \
--input-format="n3" \
--method=bfp \
--rules=$DIR/test1.formulae.n3 \
--why="SELECT ?x ?y WHERE { ?x test:has_child ?y  }" \
--why="SELECT ?x ?y WHERE { ?x test:has_sibling ?y  }" \
$DIR/test1.ontology.n3 \
$DIR/test1.individuals.n3
