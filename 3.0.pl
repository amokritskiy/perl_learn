#!/usr/bin/perl 

#3. Get max val
#[1, 2, 3, [6, 1], [[1], [3, 65]]]

use strict;
use utf8;
use open qw( :std :encoding(UTF-8) );
use List::MoreUtils qw( natatime part );
use Data::Dumper;

sub max_from_massive {

    my @arr  = [ 1, 2, 3, [ 6, 1 ], [ [1], [ 3, 65 ] ] ]; # двумерный массив
    my $size = 3; # не знаю ещё, что это
    my $max  = $arr[0][0]; # начальное значение для максимальной цифры
    my @string; # новый массив для обработанных данных

    my $iter = natatime( $size, @arr ); # подсмотрел в интернете. как разделять двумерный массив.
    my @natatime;
    while ( my @chunk = $iter->() ) {
        push @natatime, \@chunk;
    }

    foreach ( Dumper \@natatime ) { # проходим циклом по новому сырому массиву


        @string = split /\s+/, $_; # ещё раз разделяем элементы с помощью регулярки

    }

    foreach (@string) { 

        if ( $max < $_ ) { # ищем максимальное значение из элементов массива

            $max = $_; # присваиваем максимальное из них нашей переменной
        }
    }

    print "max = $max\n"; # вуаля! хотя варнинги очень ругаются

}

&max_from_massive;    # вызов функции
