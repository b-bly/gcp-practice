require 'dotenv/load'
require 'rest-client'
# res = RestClient.get 'http://api.serpstack.com/search',
#                      {
#                        params: {
#                          query: 'doors+of+stone+publication+date',
#                          access_key: ENV['SERPSTACK_KEY']
#                        }
#                      }
                    
# puts res

res = RestClient.get 'https://www.michigansportszone.com/doors-of-stone/'
puts res
# GET https://www.googleapis.com/customsearch/v1?key=INSERT_YOUR_API_KEY&cx=017576662512468239146:omuauf_lfve&q=lectures
