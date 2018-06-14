# ndenv {{{
    set -gx PATH $HOME/.ndenv/shims $PATH
    # 'ndenv init -' がfishに対応していないので茲に内容を記載
    # https://github.com/riywo/ndenv/pull/14
    # https://github.com/riywo/ndenv/pull/15
    # など、PRが出てゐるが取り込まれてゐない。
    command ndenv rehash 2> /dev/null
    function ndenv
        set command $argv[1]
        set -e argv[1]
        switch "$command"
        case rehash shell
            source (ndenv "sh-$command" $argv|psub)
        case '*'
            command ndenv "$command" $argv
        end
    end
# }
