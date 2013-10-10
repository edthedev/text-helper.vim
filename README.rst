vim-rst
=======

Vim bindings and Python scripts that make editing ReStructuredText files faster.

Requires
---------
Python 2

ReStructured Text Examples
---------------------------

Pressing ``<Leader>i`` will convert::

    images/snake-in-a-top-hat.png

Into::

    .. image:: images/snake-in-a-top-hat.png
        :alt: images/snake-in-a-top-hat.png

Pressing ``<Leader>h2`` will convert::

    Examples

Into::

    Examples
    --------

Vim Examples
-------------

This plugin also does headers for .vim files and the .vimrc file.

Pressing ``<Leader>h1`` in a vim file will convert::

    Example

Into::

    "   --------
    "
    "	Example
    "
    "   --------

Similarly, pressing ``<Leader>h2`` would have resulted in::

    " ========
    " Example
    " ========

And, pressing ``<Leader>h3`` would have resulted in::

    " Example
    " --------
