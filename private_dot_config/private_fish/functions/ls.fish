
function ls --wraps ls --description 'List contents of directory'
    set -l opts --color=auto --group-directories-first
    isatty stdout; and set -a opts -h --file-type
    command ls $opts $argv
end
