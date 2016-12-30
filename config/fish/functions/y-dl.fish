function y-dl
    pbpaste | xargs youtube-dl -x --audio-format "wav" --audio-quality 0
end
