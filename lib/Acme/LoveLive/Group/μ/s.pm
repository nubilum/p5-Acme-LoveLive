use utf8;
package Acme::LoveLive::Group::μ::s;
use 5.10.0;
use strict;
use warnings;

use Acme::LoveLive::Person::KousakaHonoka;
use Acme::LoveLive::Person::MinamiKotori;
use Acme::LoveLive::Person::SonodaUmi;
use Acme::LoveLive::Person::KoizumiHanayo;
use Acme::LoveLive::Person::HoshizoraRin;
use Acme::LoveLive::Person::NishikinoMaki;
use Acme::LoveLive::Person::AyaseEli;
use Acme::LoveLive::Person::TojoNozomi;
use Acme::LoveLive::Person::YazawaNico;

our @MEMBERS = qw(
    eli     nozomi  nico
    honoka  umi     kotori
    maki    rin     hanayo
);

sub eli    { "Acme::LoveLive::Person::AyaseEli"      }
sub nozomi { "Acme::LoveLive::Person::TojoNozomi"    }
sub nico   { "Acme::LoveLive::Person::YazawaNico"    }
sub honoka { "Acme::LoveLive::Person::KousakaHonoka" }
sub kotori { "Acme::LoveLive::Person::MinamiKotori"  }
sub umi    { "Acme::LoveLive::Person::SonodaUmi"     }
sub hanayo { "Acme::LoveLive::Person::KoizumiHanayo" }
sub rin    { "Acme::LoveLive::Person::HoshizoraRin"  }
sub maki   { "Acme::LoveLive::Person::NishikinoMaki" }

*panayo = \&hanayo;
*pana   = \&hanayo;

sub members {
    my $self = shift;
    return map { $self->$_ } @MEMBERS;
}

1;

__END__
