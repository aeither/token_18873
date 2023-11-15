// The 'token_18873' program.
program token_18873.aleo {
    
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

}
