export function getDataForPathParam(destinations, filterKey, key){
    const filteredData = destinations.filter((destination) => {
        return destination[filterKey].toLowerCase() === key.toLowerCase()
      })
      return filteredData
}