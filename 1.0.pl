#!/usr/bin/perl -w

use strict;
use utf8;
use open qw( :std :encoding(UTF-8) );

sub search_a_word {
    $_ = "This is a dog. It is big and black.  Odograph is instrument for recording courses steered by a vessel with the distances or lengths of time run on each.";

    print $_ . "\n\n"; # эталонная строка

    my $DOG = " " . uc("dog"); # на это значение изменим в строке нужный фрагмент
    my $key = rindex( $_, " dog" ); # находим индекс последнего нахождения слова "dog"

    substr( $_, $key, 4 ) = $DOG; #  начиная с индекса $key и последующие четыре индекса заменяем переменной $DOG

    print $_ . "\n"; # изменённая строка

}

&search_a_word; # вызов функции