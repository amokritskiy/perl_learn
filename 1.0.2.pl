#!/usr/bin/perl -w

use strict;
use utf8;
use open qw( :std :encoding(UTF-8) );

sub search_a_word {
    $_ =
"This is a dog. It is big and black.  Odograph is instrument for recording courses steered by a vessel with the distances or lengths of time run on each.";

    $_ =~ s/dog*/DOG/g;    # через регулярные

    print $_ . "\n";       # изменённая строка

}

&search_a_word;            # вызов функции
