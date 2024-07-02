#!/usr/bin/ruby2.7
# print_alphabet.rb
# Date: 2024-07-02
# Coder: Vladimir Victor Pavlychev <https://github.com/vovs03/codex>

def print_alphabet()
  # Method .join - converting Array |> String with spaces as separators.
  alf = [*?A..?Z].join(" ")

  #Output result.
  p alf
  # p alf.reverse
end

print_alphabet()
