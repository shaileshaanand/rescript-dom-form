@val external document: {..} = "document"
@val external window: {..} = "window"

document["querySelector"]("#textEditor")["addEventListener"]("input", event => {
  document["querySelector"]("#textView")["innerHTML"] = event["target"]["value"]
})

document["querySelector"]("#textEditor")["addEventListener"]("input", event => {
  document["querySelector"]("#textView")["innerHTML"] = event["target"]["value"]
})

["#selectSmall", "#selectRegular", "#selectLarge"]->Belt.Array.forEach(radio_id => {
  document["querySelector"](radio_id)["addEventListener"]("change", _ => {
    let textView = document["querySelector"]("#textView")
    let baseClasses = "focus:outline-none font-thin "
    switch radio_id {
    | "#selectSmall" => textView["classList"] = baseClasses ++ "text-sm"
    | "#selectRegular" => textView["classList"] = baseClasses ++ "text-2xl"
    | "#selectLarge" => textView["classList"] = baseClasses ++ "text-6xl"
    | _ => ignore()
    }
  })
})
