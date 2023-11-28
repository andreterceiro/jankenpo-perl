use strict;
use warnings;

## get_complete_string_choice()
##
## Arguments:
##    $character_choice: charcter related to the choice 
##
## Returns: string related to the complete string of the choice, like 'p' for 'paper'
##
## Returns a complete string related to a character of the choice, like 'p' for 'paper'
sub get_complete_string_choice {
    my $character_choice = $_[0];

    if ($character_choice eq "p") {
        return 'paper';
    } elsif ($character_choice eq "r") {
        return 'rock';
    } 
    return 'scissors';
}

## get_computer_choice()
##
## Returns: ramdom character related to the computer choice
##
## Returns a ramdom character related to the computer choice
sub get_computer_choice() {
    my $random_choice = rand(3);
    $random_choice = int($random_choice) + 1;

    if ($random_choice == 1) {
        return 'p';
    } elsif ($random_choice == 2) {
        return 'r';
    }
    return 's';
}

my $computer_choice = get_computer_choice();
my $user_choice = '';

while ($user_choice ne 'p' && $user_choice ne 'r' && $user_choice ne 's') {
    print "Please type 'p' for 'paper', 'r' for 'rock' or 's' for 'scissors' ";
    $user_choice = <STDIN>;
    chomp $user_choice;
}

my $winner = '';
if (($user_choice eq 'p' && $computer_choice eq 'r') || ($user_choice eq 'r' && $computer_choice eq 's') || ($user_choice eq 's' && $computer_choice eq 'p')) {
    $winner = "user";
} elsif ($user_choice eq $computer_choice) {
    $winner = "draw";    
} else {
    $winner = 'computer';
}

print "\nWinner: " . $winner;
print "\nUser selected: " . get_complete_string_choice($user_choice);
print "\nComputer selected: " . get_complete_string_choice($computer_choice) . "\n";