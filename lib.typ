#let debug-mode = true

#let count-words(it) = {
  let fn = repr(it.func())
  if fn == "sequence" { it.children.map(count-words).sum(default: 0) } else if fn == "text" {
    it.text.split().len()
  } else if (
    fn in "styled"
  ) { count-words(it.child) } else if fn in ("highlight", "item", "emph", "strong", "link") {
    count-words(it.body)
  } else if (
    fn in ("footnote", "heading", "equation")
  ) { 0 } else { 0 }
}
#let volume(num, content) = [
  = Volume #num
  #if debug-mode [_Total word count: #count-words(content)_]

  #content
]
#let chapter(num, title, content, prefix: "Chapter") = [
  #if num != none {
    num = [ #num]
  }
  == #prefix#num: #title
  #if debug-mode [_Word count: #count-words(content)_]

  #content
]

#let extra-chapter(num, title, content) = chapter(num, title, content, prefix: "Extra chapter")

#let prologue(title, content) = chapter(none, title, content, prefix: "Prologue")
#let epilogue(title, content) = chapter(none, title, content, prefix: "Epilogue")
