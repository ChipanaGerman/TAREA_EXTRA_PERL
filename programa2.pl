#!/usr/bin/perl
use strict;
use warnings;
use List::Util qw(min max sum);

sub calcular_promedio {
    my @notas = @_;

    # Encuentra la nota mínima y máxima
    my $nota_min = min @notas;
    my $nota_max = max @notas;

    # Filtra las notas para eliminar la mínima y duplicar la máxima
    @notas = grep { $_ != $nota_min } @notas;  # Elimina la mínima
    push @notas, $nota_max;  # Duplica la máxima

    # Calcula el promedio
    my $promedio = sum(@notas) / @notas;

    return $promedio;
}


