// The 'token_18873' program.
program token_18873.aleo {
     transition main(public a: u32, b: u32) -> u32 {
        let c: u32 = a + b;
        return c;
    }
}
