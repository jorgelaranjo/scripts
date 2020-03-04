#!/bin/sh
echo '$1' | sha1sum |sed 's/\(^.....\).*/\1/' | xargs -I {} curl "https://api.pwnedpasswords.com/range/"\{\}
