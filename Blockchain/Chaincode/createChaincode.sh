   > cd .. && peer lifecycle chaincode package health.tar.gz --label health -p chaincode
    > peer lifecycle chaincode install health.tar.gz 
    > export CC_PACKAGE=health:----------64hexdigit number----------
    > peer lifecycle chaincode approveformyorg -C test -n health --package-id $CC_PACKAGE -v 1.0 -o orderer:7050 --sequence 1
    > peer lifecycle chaincode commit -C test -n health -v 1.0 -o orderer:7050 --sequence 1