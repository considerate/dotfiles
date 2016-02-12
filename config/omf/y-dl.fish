function y-dl
    pbpaste | xargs youtube-dl -x --audio-format "wav" --audio-quality 0
end
function wav-to-aiff
    for file in *.wav
        set basename (echo $file | sed 's/\.[^.]*$//')
        avconv -i $file $basename.aiff
    end
end

