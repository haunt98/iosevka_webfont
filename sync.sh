#!/usr/bin/env bash

curl -L https://github.com/be5invis/Iosevka/releases/download/v17.0.2/webfont-iosevka-17.0.2.zip -o webfont-iosevka.zip
curl -L https://github.com/be5invis/Iosevka/releases/download/v17.0.2/webfont-iosevka-term-17.0.2.zip -o webfont-iosevka-term.zip

curl -L https://github.com/be5invis/Iosevka/releases/download/v17.0.2/webfont-iosevka-curly-17.0.2.zip -o webfont-iosevka-curly.zip
curl -L https://github.com/be5invis/Iosevka/releases/download/v17.0.2/webfont-iosevka-term-curly-17.0.2.zip -o webfont-iosevka-term-curly.zip

curl -L https://github.com/be5invis/Iosevka/releases/download/v17.0.2/webfont-iosevka-ss08-17.0.2.zip -o webfont-iosevka-ss08.zip
curl -L https://github.com/be5invis/Iosevka/releases/download/v17.0.2/webfont-iosevka-term-ss08-17.0.2.zip -o webfont-iosevka-term-ss08.zip

curl -L https://github.com/be5invis/Iosevka/releases/download/v17.0.2/webfont-iosevka-ss17-17.0.2.zip -o webfont-iosevka-ss17.zip
curl -L https://github.com/be5invis/Iosevka/releases/download/v17.0.2/webfont-iosevka-term-ss17-17.0.2.zip -o webfont-iosevka-term-ss17.zip

rm -rf docs/iosevka*

unzip webfont-iosevka.zip -d docs/iosevka
unzip webfont-iosevka-term.zip -d docs/iosevka-term

unzip webfont-iosevka-curly.zip -d docs/iosevka-curly
unzip webfont-iosevka-term-curly.zip -d docs/iosevka-term-curly

unzip webfont-iosevka-ss08.zip -d docs/iosevka-ss08
unzip webfont-iosevka-term-ss08.zip -d docs/iosevka-term-ss08

unzip webfont-iosevka-ss17.zip -d docs/iosevka-ss17
unzip webfont-iosevka-term-ss17.zip -d docs/iosevka-term-ss17

rm -rf *.zip

git add .
git commit -m "feat: sync 17.0.2"
git push
