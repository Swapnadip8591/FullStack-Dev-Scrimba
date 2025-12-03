export default function jsonResponse(res, status, jsonObj){
    res.setHeader('Content-Type', 'application/json')
    res.statusCode = status
    res.end(JSON.stringify(jsonObj))
}