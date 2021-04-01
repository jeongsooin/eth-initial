
//pragma solidity =0.5.16;
pragma solidity =0.6.6;
// pragma solidity =0.5.0;

    contract tests  {
    constructor() public {_;}
/*  
    address pubic constant factory = 0xD7407aCDcc745315246c00392635119fC3c9606D;
    address pubic constant token0 = 0xb290c512f7efa8b3029121952e334575b4a9fc3d; // change me!
    address pubic constant token1 = 0x441a69cd9e4cebda814f9ea794ccaaf358aefd78; // change me!
*/
    address public pairaddress;
//        uint public constant MINIMUM_LIQUIDITY = 10**3;
    function calcpairaddress() public returns (uint pair) {
        address constant token0 = 0xb290c512f7efa8b3029121952e334575b4a9fc3d; // change me!
        address constant token1 = 0x441a69cd9e4cebda814f9ea794ccaaf358aefd78; // change me!

        pair = address(uint(keccak256(abi.encodePacked(
      hex'ff',
      factory,
      keccak256(abi.encodePacked(token0, token1)),
      hex'96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f'
    ))));
    }
}
