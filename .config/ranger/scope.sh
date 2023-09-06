case "$extension" in
    # ... other cases ...
    mp4|mkv|avi|mov)
        vlc "$path"
        ;;
    # ... other cases ...
esac
