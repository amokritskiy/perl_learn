#!/usr/bin/perl -w

use strict;
use utf8;
use open qw( :std :encoding(UTF-8) );

sub search_a_word {
    $_ = "This is a dog. It is big and black.  Odograph is instrument for recording courses steered by a vessel with the distances or lengths of time run on each.";
    # Odograph  тоже содержит буквосочетание  dog 
    # дополнительно надо сделать универсальный код, например, если dog встречается больше чем 2 раза
    
    print $_ . "\n\n"; # эталонная строка

    my $DOG = " " . uc("dog"); # на это значение изменим в строке нужный фрагмент
    my $key_first = index( $_, " dog" ); # находим индекс первого нахождения слова "dog"
    my $key_last = rindex( $_, " dog" ); # находим индекс последнего нахождения слова "dog"
    
    print $key_last; #возвращает 9 
    print $key_first; #возвращает 9 

    substr( $_, $key_first, 4 ) = $DOG; #  начиная с индекса $key и последующие четыре индекса заменяем переменной $DOG
    substr( $_, $key_last, 4 ) = $DOG; #  начиная с индекса $key и последующие четыре индекса заменяем переменной $DOG

    print $_ . "\n"; # изменённая строка

}

&search_a_word; # вызов функции
