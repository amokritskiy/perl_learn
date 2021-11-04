#!/usr/bin/perl -w

use strict;
use utf8;
use open qw( :std :encoding(UTF-8) );

sub search_a_word {
#Новая строка. Отработал скрипт.

$_ = "This is a dog. It is big and black.  Odograph is instrument for recording courses steered (dog is here)  by a vessel with the (and dog is here) distances or lengths of time run on each.";



    print $_ . "\n\n";    # эталонная строка

    $_ =~ s/dog*/DOG/g; # через регулярные

    print $_ . "\n";    # изменённая строка

}

&search_a_word;         # вызов функции
