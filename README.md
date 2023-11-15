# token_18873.aleo

Following workshop

## Build Guide

To compile this Aleo program, run:
```bash
snarkvm build
```

To execute this Aleo program, run:
```bash
snarkvm run hello
```

## Workshop

```bash
leo new token_$RANDOM
```

```bash
leo run main "100u32" "200u32"
```

```bash
leo run mint "23u64"
```

```bash
leo run transfer_public_to_private aleo1ftycj3yyvsqn4kmqlqt99m2mr6we8t8dyzjuwutt6npsn62ry5gsnl2njv 123u64
```

```bash
leo run transfer_private aleo1ftycj3yyvsqn4kmqlqt99m2mr6we8t8dyzjuwutt6npsn62ry5gsnl2njv 12u64 "{   owner: aleo10sxuqyzpvjyqvp5tzefcgut9cl82ny0gyj8azmj47nh9n86lacgqalvsrg.private,   balance: 23u64.private,   _nonce: 6752985341294129751464453449632440753856509679116148998357333068793136823026group.public }"
```
