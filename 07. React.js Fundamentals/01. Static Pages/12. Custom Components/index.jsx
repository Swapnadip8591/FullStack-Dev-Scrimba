import { createRoot } from "react-dom/client"
const root = createRoot(document.getElementById("root"))

/**
 * Challenge (part 1):
 * Create a custom "Page" component
 * 
 * It should return an ordered list with the reasons why you're
 * excited to be learning React :)
 * 
 * Render the Page component.
 */
function Page(){
    return(
        <ul>
            <li>Fun to see how to reuse code</li>
            <li>Large ecosystem</li>
            <li>Jobs</li>
        </ul>
    )
}

root.render(
    <Page />
)
