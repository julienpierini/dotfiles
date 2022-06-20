function ossl-print-key -d "Print rsa private key" -a "key"
    openssl rsa -check -in $key
end

function ossl-print-csr -d "Print certificate csr" -a "csr"
    openssl req -text -noout -verify -in $csr
end

function ossl-print-crt -d "Print x509 certificate" -a "crt"
    openssl x509 -text -noout -in $crt
end

function ossl-print-pkcs12 -d "Print pkcs12" -a "pkcs12"
    openssl pkcs12 -info -in $pkcs12
end

function ossl-modulus-crt -d "Print certificate modulus" -a "crt"
    openssl x509 -noout -modulus -in $crt | shasum -a 256
end

function ossl-modulus-key -d "Print key modulus" -a "key"
    openssl rsa -noout -modulus -in $key | shasum -a 256
end

function ossl-modulus-csr -d "Print csr modulus" -a "csr"
    openssl req -noout -modulus -in $csr | shasum -a 256
end

function ossl-sclient -d "Try to s_client connect a server" -a "ip"
    openssl s_client -status -connect $ip:443
end
