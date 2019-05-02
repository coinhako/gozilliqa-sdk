package keytools

import (
	"crypto/rand"
	"github.com/FireStack-Lab/LaksaGo"
	"github.com/btcsuite/btcd/btcec"
	"io"
)

var (
	Secp256k1 = btcec.S256()
)

type PrivateKey [32]byte

func GeneratePrivateKey() (PrivateKey, error) {
	pvk := [32]byte{}
	_, err := io.ReadFull(rand.Reader, pvk[:])

	if err != nil {
		return pvk, err
	}
	return PrivateKey(pvk), nil
}

func GetPublicKeyFromPrivateKey(privateKey []byte, compress bool) []byte {
	x, y := Secp256k1.ScalarBaseMult(privateKey)
	return util.Compress(Secp256k1, x, y, compress)
}

func GetAddressFromPublic(publicKey []byte) string {
	originAddress := util.EncodeHex(util.Sha256(publicKey))
	return originAddress[24:]
}

func GenerateRandomBytes(n int) ([]byte, error) {
	b := make([]byte, n)
	_, err := rand.Read(b)
	// Note that err == nil only if we read len(b) bytes.
	if err != nil {
		return nil, err
	}

	return b, nil
}
