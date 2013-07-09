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
        # Create our test table (assumes it doesn't already exist)
        def createUserTable
                @conn.exec("CREATE TABLE users (id serial NOT NULL, name character varying(255), CONSTRAINT users_pkey PRIMARY KEY (id)) WITH (OIDS=FALSE);");
        end
  end
  ptest = Connect2DB.new()
  ptest.connect
  ptest.createUserTable
  
