use QRegex:from<NQP>;

class LolSlang::Actions {
    method statementlist($/) {
        make QAST::Stmts.new(
            |($<statement>».ast)
        );
    }

    method statement($/) {
        make QAST::Op.new(:name<&say>, :op<call>,
            QAST::SVal.new( :value($/.subst(';', '').trim) )
        )
    }
}
