/*
Challenge 2:

- Create and export a function called sendResponse().  
  What 4 things should this function take in as parameters?

*/
export function sendResponse(res, statusCode, contentType, content){
  res.setHeader("Content-Type", contentType)
  res.statusCode = statusCode
  res.end(content)
}