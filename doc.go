/*
Package qingstor provided support for qingstor object storage (https://www.qingcloud.com/products/qingstor/)
*/
package qingstor

//go:generate mockgen -package qingstor -destination mock_test.go github.com/qingstor/qingstor-sdk-go/v4/interface Service,Bucket
//go:generate go run github.com/aos-dev/go-storage/v2/cmd/definitions service.hcl
