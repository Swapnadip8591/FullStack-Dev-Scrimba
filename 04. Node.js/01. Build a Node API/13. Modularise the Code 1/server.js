import http from 'node:http'
import { getDataFromDB } from './database/db.js'
import jsonResponse from './utils/sendJsonResponse.js'

const PORT = 8000

/*
Challenge:
  1. Create a utility function to make this code DRYer.
  2. Delete unnecessary code.
*/

const server = http.createServer(async (req, res) =>{
  const destinations = await getDataFromDB()

  if (req.url === '/api' && req.method === 'GET') {
    jsonResponse(res, 200, destinations)

  } else if (req.url.startsWith('/api/continent') && req.method === 'GET') {
    const continent = req.url.split('/').pop()
    const filteredData = destinations.filter((destination) => {
      return destination.continent.toLowerCase() === continent.toLowerCase()
    })

    jsonResponse(res, 200, filteredData)

  } else {
    jsonResponse(res, 404, {
      error: "not found",
      message: "The requested route does not exist"})
    }
})

server.listen(PORT, () => console.log(`Connected on port: ${PORT}`))
