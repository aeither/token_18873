// The 'token_18873' program.
program token_18873.aleo {
    
    mapping balance: address => u64;

    record Token{
        owner: address,
        balance: u64,
        }
        
        transition mint(amount: u64) -> Token {
    return Token {
    owner: self.caller,
    balance: amount,
};
        }

        transition transfer_private (receiver: address, amount: u64, input: Token) -> (Token, Token) {
        
        let remaining: u64 = input.balance - amount;

        let caller: Token = Token {
            owner: self.caller,
            balance: remaining,
        };

        let recipient: Token = Token {
             owner: self.caller,
            balance: amount,
        };

        return (caller, recipient);
        }

        transition transfer_private_to_public (receiver: address, amount: u64, input: Token) ->  Token {
        
        let remaining: u64 = input.balance - amount;

        let caller: Token = Token {
            owner: self.caller,
            balance: remaining,
        };

        return caller then finalize (receiver, amount);
        }

        finalize transfer_private_to_public (receiver: address, amount: u64) {
        let prev: u64 = Mapping::get_or_use(balance    , receiver , 0u64 );

        Mapping::set(balance, receiver, prev + amount);
        }

        transition transfer_public_to_private (receiver: address, amount: u64) -> Token {
        return Token {
            owner: receiver,
            balance: amount,

        } then finalize (self.caller, amount);
        }

        finalize transfer_public_to_private (caller: address, amount: u64) {
        let prev: u64 = Mapping::get(balance, caller);
        }

        transition join (input: Token, input2: Token) -> Token {
        return Token {
            owner: self.caller,
            balance: input.balance + input2.balance,
        };
        }
}
