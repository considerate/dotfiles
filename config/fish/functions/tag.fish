function tag
    set -q TAG_ALIAS_FILE; or set -l TAG_ALIAS_FILE /tmp/tag_aliases
    command tag $argv; and source $TAG_ALIAS_FILE ^/dev/null
    alias ag tag
end
