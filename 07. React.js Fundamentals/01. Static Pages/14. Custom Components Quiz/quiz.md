1. What is a React component?
Small piece of code which can be reused 

2. What's wrong with this code?
```
function myComponent() {
    return (
        <small>I'm tiny text!</small>
    )
}
```
Naming convention(MyComponent)
3. What's wrong with this code?
```
function Header() {
    return (
        <header>
            <img src="./react-logo.png" width="40px" alt="React logo" />
        </header>
    )
}

root.render(Header())
```
Calling(<Header />) correct way