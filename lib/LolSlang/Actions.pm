class LolSlang::Actions {
    method statementlist($/) {
        make QAST::Stmts.new(
            QAST::Op.new(:name<&say>, :op<call>,
                QAST::SVal.new( :value('LOL') )
            )
        );
    }
}
