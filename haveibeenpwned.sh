#!/bin/sh
echo -n '$1' | sha1sum |sed 's/\(^.....\).*/\1/' | xargs -I {} curl -H "Add-Padding: True" "https://api.pwnedpasswords.com/range/"\{\}
