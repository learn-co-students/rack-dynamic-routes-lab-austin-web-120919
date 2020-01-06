
class Application
    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)
    
        if req.path.match(/items/)  
            requested_item = req.path.split('/items/').last
            if item = Item.all.find{|i| i.name == requested_item}
                resp.write item.price
            
            else
                resp.write "Item not found"
                resp.status = 400
            end
        else
            resp.status = 404
            resp.write "Route not found"
        end
        resp.finish
    end
end