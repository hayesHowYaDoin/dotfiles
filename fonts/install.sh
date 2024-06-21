#!/usr/bin/env bash

fonts_dir="${HOME}/.local/share/fonts"
if [ ! -d "${fonts_dir}" ]; then
    echo "mkdir -p $fonts_dir"
    mkdir -p "${fonts_dir}"
else
    echo "Found fonts dir $fonts_dir"
fi

version=3.2.1
font_name=FiraMono
curl --fail --location --show-error https://github.com/ryanoasis/nerd-fonts/releases/download/v${version}/${font_name}.zip --output ${font_name}.zip
unzip -o -q -d ${fonts_dir} ${font_name}.zip
rm ${font_name}.zip

echo "fc-cache -f"
fc-cache -f
