#!/usr/bin/env -S uv run
# /// script
# requires-python = ">=3.13"
# dependencies = [
#     "beautifulsoup4>=4.14.3",
# ]
# ///
import subprocess
import sys
from bs4 import BeautifulSoup

def main():
    if len(sys.argv) < 2:
        print("Usage: convert_chapter.py <input.typ>", file=sys.stderr)
        sys.exit(1)

    input_file = sys.argv[1]

    cmd = [
        "typst", "compile", "-f", "html",
        input_file, "-",
        "--features", "html",
        "--root", ".",
        "--input", "debug-mode=false",
    ]

    result = subprocess.run(cmd, capture_output=True, text=True)

    if result.returncode != 0:
        print(result.stderr, file=sys.stderr)
        sys.exit(result.returncode)

    soup = BeautifulSoup(result.stdout, "html.parser")
    body = soup.find("body")
    if body is None:
        print("no body tag found", file=sys.stderr)
        sys.exit(1)

    body_content = "".join(str(child) for child in body.children)

    print(body_content)

if __name__ == "__main__":
    main()
