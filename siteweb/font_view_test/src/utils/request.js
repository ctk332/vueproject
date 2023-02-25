import axios from 'axios'
const service = axios.create({
    baseURL: window.g.BASE_URL, // url = base url + request url
    withCredentials: true, // send cookies when cross-domain requests
    timeout: 5000 // request timeout
  })
export default service  