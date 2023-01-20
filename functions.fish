function fish_bin_path
    if test -n "$fish_pid"
        echo (readlink "/proc/$fish_pid/exe") "($fish_pid)"
    end
end

function up
    if test -n "$argv[1]"
        set -l location '.'
        for i in (seq 1 "$argv[1]")
            set location "$location/.."
        end
        cd $location
    else
        cd ..
    end
end

