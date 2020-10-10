import re
from udapi.block.agldt.query import Query


def is_crasis(node):
    # sreg_krasis = re.compile(r"([κχ])(?=\w?[ὐὖὔἰἴἀἂἄἈὠᾀᾆἠὢὤὦᾦ])")
    regs = re.compile(r"([τθκχ])(?=\w?[ὐὖὔἰἴἀἂἄἈὠᾀᾆἠὢὤὦᾦ])")
    if regs.search(node.form):
        return True


class DetectCrasis(Query):
    def __init__(self):
        super().__init__(is_crasis, mark="Crasis")