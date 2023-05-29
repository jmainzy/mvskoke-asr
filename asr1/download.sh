MUSCOGEE=downloads

echo "stage 0: Downloading data for mvskoke"

mkdir -p "${MUSCOGEE}"

tar_name="musdata.tar.gz"

curl 'https://uwnetid-my.sharepoint.com/personal/jmainz_uw_edu/Documents/mvskoke/musdata.tar.gz?cid=f349323b-1959-4801-b8bc-2f6924433e20' \
  -H 'authority: uwnetid-my.sharepoint.com' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7' \
  -H 'accept-language: en-US,en;q=0.9,th;q=0.8' \
  -H 'cookie: rtFa=Tx1Ln6H2HvjytmsxNt6awh/PH/mffKRL+tSl07pLeJ0mRTRDODEwOTktRUM3Qi00NzY3LUFENzEtQzFBOUU2NEM4Q0ExIzEzMzI5NDcyNDgxNTI0NjkyNyNGNTNFQjZBMC02MDhBLTMwMDAtOUJGNC02QzcxMkRGQUM1QzEjSk1BSU5aJTQwVVcuRURVW4B5pfLAXXLy5wV9gcJtuaHuZ4fYwvryNS5tkB8MZXP468hxjFdOyc4DCitLKhQmpR9WNYXrFCS9hzhQlpe5et1rdTxtAIK/U4xWatumu7JI+BPY3y64b1vsgsDxOj8Wq4mvgQnKwogqht1JzUm/uCqBnBrnWjKk6eU6/9u5gT27ygvOpXpttcT0fR0/y8kbjWixb2NBsTEsf2dqq0HNy+8/qdB6oRUMgfS6o7hUjjqZ3qE0xrmWrHycV7JXtbpPiAy23WjzUo/pbTdLAbxfLSiYmOK/fjAh8CE39TYZTW0BbdB9tU6t40Je3XTUrdiygM6afNEiy0paJgQpsP98ko0AAAA=; SIMI=eyJzdCI6MH0=; FedAuth=77u/PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz48U1A+VjEyLDBoLmZ8bWVtYmVyc2hpcHwxMDAzMjAwMWVjYTg0MjAxQGxpdmUuY29tLDAjLmZ8bWVtYmVyc2hpcHxqbWFpbnpAdXcuZWR1LDEzMzI0NzI3ODQ0MDAwMDAwMCwxMzI5MzY1NjcwODAwMDAwMDAsMTMzMzAyMzAyNTkwNTU5MDI5LDQ5LjIyOC4yNDcuNjcsMyxlNGM4MTA5OS1lYzdiLTQ3NjctYWQ3MS1jMWE5ZTY0YzhjYTEsLDZjYTUyZTJhLTI2ZTktNDRiMy1hZDQ4LWUyY2FmNzNiZWNkMyxmNTNlYjZhMC02MDhhLTMwMDAtOWJmNC02YzcxMmRmYWM1YzEsYTU3NWI3YTAtMDAxNi0zMDAwLTliZjQtNmMyY2QxM2I1ZDAzLCwwLDEzMzI5ODI3MDU4Mzk0NzU0OCwxMzMzMDA4MjY1ODM5NDc1NDgsLCxleUo0YlhOZlkyTWlPaUpiWENKRFVERmNJbDBpTENKNGJYTmZjM050SWpvaU1TSXNJbUZqY25NaU9pSmJYQ0oxY200NmRYTmxjanB5WldkcGMzUmxjbk5sWTNWeWFYUjVhVzVtYjF3aVhTSXNJbkJ5WldabGNuSmxaRjkxYzJWeWJtRnRaU0k2SW1wdFlXbHVla0IxZHk1bFpIVWlMQ0oxZEdraU9pSjRWR0ZOV0d4aFEwWXdkVlE1TVd4SFZVd3hlRUZCSW4wPSwxMzMyOTQ3NjA4MTUwOTAxOTYsMTMzMjk0NzI0ODAwMDAwMDAwLDc0M2Y5ODgyLWYyNmEtNGY2Yi05NWY1LTRhNGY3MTJmN2NiNCwsLCwsLDAsLFdkQ3BoREMzbUtLeUM2dzRmUi94QU8wT2JzYXhlNlFNSHQ5a3ZKbzFFQlN4S0JtcXZONW8xUHpCYmtoZjhKN3ZXRXJkY0xjSTdOOUhXMXNWdzA1U1RjNEVmam5QMkFGTkJxU244VXpLeWQvM1pkQUp6cGxlNTNvNnJlSFV4TDhYZi81S1Q3ekJvWXkxRTBFWG1XVThra2ZyK3FhTG9rQ1QxRXJFdk10S0Vka2IxdzBVcU8yOWI2anRGNGhpbURaRzV5M2JQNUUyNWx4SnNXNFlhQkUwS0ZqZjNvOVNkNEhZM05DU0w3M0RLOVI2Mlk4ZGVYRnhPWTZQV1lER1RsckNlY3puNTI4MnlJTVUzcFpjU1lOdnZjWWtkNVpYbmI0Yjh6ZnVkNEtkcWVpUU1XeUx6SThOMUdNOEZhZzhqU2xFOEN3NytpbHFVajFZVEdvVnRkdW44dz09PC9TUD4=' \
  -H 'if-range: "{46BBC755-C44C-485F-B22A-5E446954EECB},2"' \
  -H 'range: bytes=2320077-2320077' \
  -H 'sec-ch-ua: "Google Chrome";v="113", "Chromium";v="113", "Not-A.Brand";v="24"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "macOS"' \
  -H 'sec-fetch-dest: document' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-site: none' \
  -H 'sec-fetch-user: ?1' \
  -H 'service-worker-navigation-preload: true' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36' \
  --compressed \
  --output "${MUSCOGEE}/${tar_name}"

# tar -xvf "${MUSCOGEE}/${tar_name}" -C "${MUSCOGEE}" --overwrite

# rm "${MUSCOGEE}/${tar_name}"
