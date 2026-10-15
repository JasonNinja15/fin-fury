#!/usr/bin/env bash
# Builds index.html (the GitHub Pages / installable copy) from src/fin-fury.html.
# src/fin-fury.html is the same file published to claude.ai as an artifact, which supplies its own
# doctype and head; here we add them, plus the manifest and the offline service worker.
cd "$(dirname "$0")"
{
  printf '%s\n' '<!doctype html><html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">'
  printf '%s\n' '<link rel="manifest" href="manifest.webmanifest"><meta name="theme-color" content="#07111d"><link rel="icon" type="image/png" href="icon-192.png"><link rel="apple-touch-icon" href="icon-192.png">'
  printf '%s\n' '</head><body>'
  cat src/fin-fury.html
  printf '\n%s\n' "<script>if('serviceWorker' in navigator&&/^https?:\$/.test(location.protocol))addEventListener('load',()=>navigator.serviceWorker.register('sw.js').catch(()=>{}))</script>"
  printf '%s\n' '</body></html>'
} > index.html
