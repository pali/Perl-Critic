=name Basic failure

=failures 2

=cut

print "this is literal";
print qq{this is literal};

#----------------------------------------------------------------

=name Basic passing

=failures 0

=cut

print 'this is literal';
print q{this is literal};

#----------------------------------------------------------------

=name Code with all delimiters in configuration

=failures 0

=parms {allow => 'qq( qq{ qq[ qq/'}

=cut

$sql = qq(select foo from bar);
$sql = qq{select foo from bar};
$sql = qq[select foo from bar];
$sql = qq/select foo from bar/;

is( pcritique($policy, \$code, \%config), 0, $policy);

#----------------------------------------------------------------

=name Code with not all delimiters in configuration

=failures 2

=parms {allow => 'qq( qq{'}

=cut

$sql = qq(select foo from bar);
$sql = qq{select foo from bar};
$sql = qq[select foo from bar];
$sql = qq/select foo from bar/;

#----------------------------------------------------------------

=name Configuration with only delimiters, no operators

=failures 2

=parms {allow => '() {}'}

=cut

$sql = qq(select foo from bar);
$sql = qq{select foo from bar};
$sql = qq[select foo from bar];
$sql = qq/select foo from bar/;

#----------------------------------------------------------------

=name Configuration with matching closing delimiters

=failures 2

=parms {allow => 'qq() qq{}'}

=cut

$sql = qq(select foo from bar);
$sql = qq{select foo from bar};
$sql = qq[select foo from bar];
$sql = qq/select foo from bar/;

#----------------------------------------------------------------

##################################################################
#      $URL$
#     $Date$
#   $Author$
# $Revision$
##################################################################

# Local Variables:
#   mode: cperl
#   cperl-indent-level: 4
#   fill-column: 78
#   indent-tabs-mode: nil
#   c-indentation-style: bsd
# End:
# ex: set ts=8 sts=4 sw=4 tw=78 ft=perl expandtab :
