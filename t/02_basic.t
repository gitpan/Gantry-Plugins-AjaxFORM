use strict;
use Test::More tests => 1;

BEGIN {
    eval { require Data::FormValidator; };
    my $skip1 = ( $@ ) ? 1 : 0;

    eval { require Gantry::Utils::CRUDHelp; };
    my $skip2 = ( $@ ) ? 1 : 0;

    SKIP: {
        skip "Gantry::Plugins::AjaxCRUD requires Data::FormValidator", 2
                if $skip1;
                
        skip "Gantry::Plugins::AjaxCRUD requires Gantry::Utils::CRUDHelp", 2
                if $skip2;

        use_ok( 'Gantry::Plugins::AjaxFORM' );        
    }
}
