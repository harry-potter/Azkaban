#Example on how to use access modifiers
#accounting system where every debit has coressponding credit
class Account
        attr_accessor :balance
        def initialize(balance)
                @balance = balance
        end
end

class Transaction
        def initialize(account_a,account_b)
                @account_a = account_a
                @account_b = account_b
        end
        #credit and debit should not be accesses from outside
        private
                def debit(account,amount)
                        account.balance -= amount
                end
                def credit(account,amount)
                        account.balance += amount
                end
        public 
                def transfer(amount)
                        debit(@account_a,amount)
                        credit(@account_b,amount)
                end             
end
savings = Account.new(150)
checkings = Account.new(200)
trans = Transaction.new(checkings,savings)
trans.transfer(50)
puts savings.balance
puts checkings.balance
#another way to use access modifiers
#public :method1, :method4
#protected :method2
#private :method3

