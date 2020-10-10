"""
A simple test module, to verify that all the imports and envs are
working fine.

Try it with the `test.sh` scritp in this folder!

"""

from udapi.core.block import Block

class HelloWorld(Block):
    def process_document(self, document):
        print("Hello, World!")
