query=$1
res=$(python3 -c "print(eval('$1'))")
cat << EOF
{
    "items": [
        {
            "uid": "$query",
            "title": "$res",
            "subtitle": "Command+C to copy to clipboard",
            "arg": "$res"
        }
    ]
}
EOF