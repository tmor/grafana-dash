#!/usr/bin/env jq -Mf

walk(
  if type == "object" and has("datasource") then
    if .datasource == $old then
      .datasource = $new
    else
     .
    end 
  else
    .
  end
)
