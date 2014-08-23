grammar LolSlang::Grammar {
    rule statementlist {
        <statement>*
    }

    rule statement {
        [ lol | Lol | LOL ]
        ';'
    }
}
