#!/usr/bin/perl -w

use strict;
use utf8;
use open qw( :std :encoding(UTF-8) );

sub search_a_word {
    my $the_string =
"This is a dog. It is big and black.  Odograph is instrument for recording courses steered (dog is here)  by a vessel with the (and dog is here) distances or lengths of time run on each.";

# Odograph  тоже содержит буквосочетание  dog
# дополнительно надо сделать универсальный код, например, если dog встречается больше чем 2 раза

#   ТО ЕСТЬ, ИСКАТЬ НЕ СЛОВО "dog", а сочитание этих трёх букв? Нужно, чтобы и dog выделить
#   и в слове ODOGraph ?

#Да, и если буквосочетане dog встречается больше двух раз. - Подправил текст, в котором искать слово

    print $the_string . "\n\n";    # эталонная строка

    my @the_array =
      qw(This is a dog. It is big and black.  Odograph is instrument for recording courses steered (dog is here)  by a vessel with the (and dog is here) distances or lengths of time run on each.);

    foreach my $key (@the_array) {

        $key =~ s/dog*/DOG/g;      # через регулярные

    }

    print join( " ", @the_array );

}

&search_a_word;                    # вызов функции
