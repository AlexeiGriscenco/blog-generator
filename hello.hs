main = putStrLn myhtml

html_ content = "<html>" <> content <> "</html>"

body_ content = "<body>" <> content <> "</body>"

wrapHtml = html_ . body_

head_ content = "<head>" <> content <> "</head>"

title_ content = "<title>" <> content <> "</title>"

makeHtml title content = html_ (head_ $ title_ title <> body_ content)

myhtml = makeHtml "Hello, title!" "Hello, world!"
