use LolSlang::Actions;
use QRegex:from<NQP>;

grammar LolSlang::Grammar {
    rule statementlist {
        <statement>*
    }

    rule statement {
        [ lol | Lol | LOL ]
        ';'
    }
}
