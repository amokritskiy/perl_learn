#!/usr/bin/perl -w

#2. Нарисовать треугольник заданной высоты, входной параметр цифра (от 1 до 12).
#При цифре 4 результат должен быть такой:
#    *
#   ***
#  *****
# *******

use strict;
use utf8;
use open qw( :std :encoding(UTF-8) );

sub tringle_print {

    print "Введите число уровней пирамиды: ";
    chomp( my $rows = <STDIN> );

    my $i;
    my $j;
    my $k;

    if ( $rows >= 1 && $rows <= 12 ) {

        for ( $i = 0 ; $i <= $rows ; $i++ )
        {   # цикл по количеству уровней пирамиды

            for ( $j = 0 ; $j < $rows - $i ; $j++ ) {
                print " ";    # print пробелы
            }

            for ( $k = 1 ; $k <= ( 2 * $i - 1 ) ; $k++ ) {
                print "*";    # print звёздочки
            }

            print "\n";       # новый уровень пирамиды
        }

    }
    else {

        print "Число должно от 1 до 12 !\n";
    }
}

&tringle_print;               # вызов функции
