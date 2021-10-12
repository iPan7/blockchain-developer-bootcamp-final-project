# blockchain-developer-bootcamp-final-project

It is evident that the push for greener technology in all aspects of industry will continue. This project aims to highlight a potential use case that incentivizes car manufacturers to sell cars that are more environmentally friendly through the use of the Ethereum blockchain. Vehicles that do not meet emission standards have a portion of every sale sent to an eco sustainment fund instead of the full amount going directly to the seller.

To do so, it deploys 3 smart contracts.

1) Vehicle Token - An ERC-721 NFT that represents each vehicle. At the moment of creation, it will be specified whether or not the vehicle meets emission standards.

2) Vehicle Market - A marketplace where the NFTs can be sold or bought. For every sale, the market checks if the vehicle meets emission standards and if it does not, a portion of the funds go to an eco sustainment fund instead of the seller.

3) Eco Sustainment Fund - A multisignature wallet that decides how to spend the money in a transparent and auditable fashion.
