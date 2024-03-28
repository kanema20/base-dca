# Load .env
source .env

# Deploy V2
forge script script/Deploy.s.sol:Deploy --rpc-url ${ETH_SEPOLIA_QUICKNODE_ENDPOINT}
forge script script/Deploy.s.sol:Deploy --rpc-url ${ETH_SEPOLIA_QUICKNODE_ENDPOINT} --broadcast --etherscan-api-key ${API_KEY_ETHERSCAN} --verify --optimize --optimizer-runs 20000 -vvvv