use LolSlang::Grammar;

sub EXPORT(*@a) {
    %*LANG<LolSlang>         := LolSlang::Grammar;
    %*LANG<LolSlang-actions> := LolSlang::Actions;

    $*MAIN := 'LolSlang';

    $*W.install_lexical_symbol($*W.cur_lexpad(), '%?LANG', $*W.p6ize_recursive(%*LANG));
    $*W.install_lexical_symbol($*W.cur_lexpad(), '$*MAIN', $*W.p6ize_recursive($*MAIN));

    $*W.p6ize_recursive( nqp::hash() );
}
