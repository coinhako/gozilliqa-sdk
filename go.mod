module github.com/Zilliqa/gozilliqa-sdk

require (
	github.com/btcsuite/btcd v0.23.1
	github.com/btcsuite/btcd/btcec v0.0.0-00010101000000-000000000000
	github.com/btcsuite/btcd/btcec/v2 v2.1.3 // indirect
	github.com/btcsuite/btcutil v0.0.0-20190425235716-9e5f4b9a998d
	github.com/ethereum/go-ethereum v1.9.15
	github.com/golang/protobuf v1.4.2
	github.com/google/uuid v1.1.1
	github.com/gorilla/websocket v1.4.1
	github.com/stretchr/testify v1.7.0
	github.com/tyler-smith/go-bip39 v1.0.2
	github.com/ybbus/jsonrpc v2.1.2+incompatible
	golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9
	golang.org/x/sync v0.0.0-20190423024810-112230192c58
	google.golang.org/protobuf v1.23.0
)

go 1.13

replace github.com/btcsuite/btcd/btcec => github.com/btcsuite/btcd/btcec/v2 v2.2.1

replace github.com/btcsuite/btcutil => github.com/btcsuite/btcd/btcutil v1.1.2
