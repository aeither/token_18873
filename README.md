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
