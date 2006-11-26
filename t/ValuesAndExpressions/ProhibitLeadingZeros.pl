=name Basic passing

=failures 0

=cut

$var = 0;
$var = 0.;
$var = .0;
$var = 10;
$var = 0.0;
$var = 00.0;
$var = 00;
$var = 0.11;
$var = 10.0;
$var = -0;
$var = -0.;
$var = -10;
$var = -0.0;
$var = -10.0
$var = -0.11;
$var = +0;
$var = +0.;
$var = +10;
$var = +0.0;
$var = +10.0;
$var = +0.11;

#These are legal, but PPI doesn't parse them correctly.  So I've put
#in a workaround that looks for a decimal preceeding the number.

$var = +.011;
$var = .011;
$var = -.011;

#----------------------------------------------------------------

=name Basic failure

=failures 12

=cut

$var = 01;
$var = 010;
$var = 001;
$var = 0010;
$var = -01;
$var = -010;
$var = -001;
$var = -0010;
$var = +01;
$var = +010;
$var = +001;
$var = +0010;

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
