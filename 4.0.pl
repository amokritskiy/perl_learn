#!/usr/bin/perl -w

# 4. Write a function that takes a list of strings an prints them,
# one per line, in a rectangular frame. For example the
# list ["Hello", "World", "in", "a", "frame"] gets printed as:

# *********
#  Hello
#  World
#  in
#  a
#  frame
# *********

use strict;
use utf8;
use open qw( :std :encoding(UTF-8) );

sub print_frame {

    my @frame_arr = [ "Hello", "World", "in", "a", "frame" ]; # заданный массив
    my @frame_list; # новый массив с элементами из заданного массива
    my $number_of_elements; # число элементов в массиве для запуска цикла for
    my $word_lenght = 0; # начальная длина слова, чтобы обрамление из * было шире самого длинного слова. для красоты.
    my $number_of_stars; # собственно - количество *. шире в два раза большего слова

    foreach my $key (@frame_arr) { # выпимаем элементы из массива

        $number_of_elements = scalar @{$key}; # количество элементов. для запуска цикла в дальнейшем

        foreach ( @{$key} ) { 

            @frame_list = @{$key}; # наш новый массив. очищенный.

            if ( $word_lenght < length($_) ) { # находим длину самого длинного элемента в массиве

                $word_lenght = length($_); # присваиваем переменной это максимальное значение
                $number_of_stars = "*" x ( $word_lenght * 2 ); # вычисляем и присваиваем количество * 

            }

        }

    }


    for ( my $i = 0 ; $i < 1 ; $i++ ) { # два раза выводим обрамления из *

        print "$number_of_stars\n"; # первый звёзды

        for ( my $j = 0 ; $j < $number_of_elements ; $j++ ) {

            print $frame_list[$j] . "\n"; # печатаем наши слова с новой строки

        }

        print "$number_of_stars\n"; # вторые звёзды
    }


}

&print_frame;    # вызов функции
