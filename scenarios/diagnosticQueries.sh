#!/usr/bin/env bash

# Performs a series of diagnostic queries, looking for suspicious annotation structures
# the results are saved in a `result.conllu` file on the Desktop
#
# Usage:
#   diagnosticQueries.sh <path-to-tb.xml>


udapy read.Agldt files="$1" \
  .HelloWorld  \
  write.Conllu > "$HOME/Desktop/results.conllu" \

  # TODO: Check CompoundConj
  # TODO: Check .DetectCrasis on Pe (local module)
  # TODO: check AposClause
  # TODO: check PredicativePart on Pe
  # TODO: check ClauseAP
  # TODO: check OBJNoun on Pe
  #
  ## .DetectCrasis \
  ## agldt.diagnostics.PredicativePart \
  ## util.Filter mark="ClauseAP" keep_tree_if_node="'_AP'in node.deprel and node.xpos[0] == 'v'"
  ## util.Filter mark="OBJNoun" keep_tree_if_node="node.deprel=='OBJ' and node.parent.xpos[0] == 'n'"