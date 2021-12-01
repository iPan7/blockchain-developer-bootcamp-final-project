## SWC-104 (Unchecked Call Return Value)

The return value from a call to pre validate purchase in the `_preValidatePurchase` function is checked with `require` to ensure transaction rollback if call fails.

## SWC-105 (Unprotected Ether Withdrawal)

`setKycCompleted` is protected with OpenZeppelin `Ownable`'s `onlyOwner` modifier.
`setKycRevoked` is protected with OpenZeppelin `Ownable`'s `onlyOwner` modifier.

