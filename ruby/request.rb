
require "net/http"
require "uri"

token = "<PUT YOUR API TOKEN HERE>"
organization="<PUT YOUR ORGANIZATION ID HERE>"

#uri = URI.parse('https://api.nibo.com.br/empresas/v1/Organizations?Organization=' + organization + '&apitoken=' + token)
uri = URI.parse('https://api.nibo.com.br/empresas/v1/Organizations')
params = {'Organization'=>organization, 'apitoken'=>token}
uri.query = URI.encode_www_form(params)
res = Net::HTTP.get_response(uri)
puts res.body