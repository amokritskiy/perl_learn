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

my $rows;

sub tringle_print {

    print "Введите число уровней пирамиды: ";
    $rows = <STDIN>;

    my $i;
    my $j;
    my $k;

    if ( $rows >= 1 && $rows <= 12 ) {

        my $i = 0;
        for ( $i = $rows ; $i > 0 ; $i-- ) {
            print " " x $i;
            print "*" x ( ( 1 + 2 * ( $rows - $i ) ) );
            print "\n";
        }

    }
    else {

        print "Число должно от 1 до 12 !\n";
    }
}

&tringle_print;    # вызов функции
