# Load .env
source .env

# Deploy V2
forge script script/Deploy.s.sol:Deploy --rpc-url ${ETH_SEPOLIA_QUICKNODE_ENDPOINT}
forge script script/Deploy.s.sol:Deploy --rpc-url ${ETH_SEPOLIA_QUICKNODE_ENDPOINT} --broadcast --verify --optimize --optimizer-runs 20000 -vvvv
