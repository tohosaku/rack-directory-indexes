module Rack
  class DirectoryIndexes

    F = ::File

    def initialize(app, options={:indexes => ["index.html"]})
      @app             = app
      @directory_indexes = (
        if options[:indexes] && !options[:indexes].empty?
          options[:indexes]
        end
       )
    end

    def call(env)
      req_path = env['PATH_INFO']
      if req_path[-1,1] == "/"
        @directory_indexes.seach do |index|
          new_status , new_headers, new_body = res =  @app.call(env.dup.tap{|e| e['PATH_INFO'] = F.join(e['PATH_INFO'], index) })
          if new_status == 200
            new_headers['Content-Type'] = "text/html"
            return res
          end
        end
      end
      @app.call(env)
    end
  end
end
