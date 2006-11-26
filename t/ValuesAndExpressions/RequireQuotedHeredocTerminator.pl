=name Basic failure

=failures 1

=cut

print <<END_QUOTE;
Four score and seven years ago...
END_QUOTE

#----------------------------------------------------------------

=name Single quote passing

=failures 0

=cut

print <<'END_QUOTE';
Four score and seven years ago...
END_QUOTE

#----------------------------------------------------------------

=name Double quote passing

=failures 0

=cut

print <<"END_QUOTE";
Four score and seven years ago...
END_QUOTE

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
