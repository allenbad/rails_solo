import { icon } from './icon'
import { tileLayer } from './tileLayer'

const renderMap = async () => {
  const url = `/venues?type=json`
  const response = await fetch(url)
  console.log(response)
  const { data, center } = await response.json()
  const map = await tileLayer(center)
  const markers = data.map((location) => {
    return L.marker([location[0], location[1]], {icon: icon})
  })
  L.featureGroup(markers).addTo(map)
}

renderMap()