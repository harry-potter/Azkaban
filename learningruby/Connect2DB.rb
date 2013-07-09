#connect to db using pg
require 'pg'
class Connect2DB
        # Create the connection instance.
        def connect
                 @conn = PGconn.connect(
                 :dbname => 'pocDb',
                :user => 'postgres',
                :password => 'postgres',
                :hostaddr=> '127.0.0.1',
                :port =>'5432'
                )
        end
        
        #Disconnect the backend connection
        def disconnect
                @conn.close
        end
        
        # Create our test table (assumes it doesn't already exist)
        def createUserTable
                begin 
                        connect
                        @conn.exec("CREATE TABLE users (id serial NOT NULL, name character varying(255), CONSTRAINT users_pkey PRIMARY KEY (id)) WITH (OIDS=FALSE);");
                rescue Exception => e
                        puts e.message
                ensure
                        disconnect
                end
        end
        
        #add data to user table
        def addUser(id,user)
                begin
                        connect
                        @conn.exec("insert INTO users values(#{id},'#{user}')")
                rescue Exception => e
                        puts e.message
                ensure
                        disconnect
                end
        end
  end
  ptest = Connect2DB.new()
  ptest.createUserTable
  ptest.addUser(3,"Test")
  
