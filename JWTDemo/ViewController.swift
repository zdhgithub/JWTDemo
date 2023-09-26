//
//  ViewController.swift
//  JWTDemo
//
//  Created by dh on 2023/9/16.
//

import UIKit
//import JWT
import SwiftJWT
import CertificateSigningRequest
import SwiftyRSA
//import X509
import ASN1Decoder
//import AuxiliaryExecute
import OpenSSL



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        encode()
        genCsr()
//        let certificateContent = "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"
//        let decodedData = Data(base64Encoded:certificateContent , options: .ignoreUnknownCharacters)!
//        let decodedString = String(data: decodedData, encoding: .ascii)
//        
//        let publicKey = try? PublicKey(derNamed: "cert")
//        let privateKey = try? PrivateKey(derNamed: "cert")
//        
//
//        do {
//            let x509 = try X509Certificate(data: decodedData)
//
//            let subject = x509.subjectDistinguishedName ?? ""
//            debugPrint("subject: " + subject)
//
//
//        } catch {
//            print(error)
//        }
        
//        let forge = DHJSTool()
//       let pem = forge?.createCsr()
//        debugPrint(pem)
//        forge?.cer2p12()
        
        //-----BEGIN PRIVATE KEY-----\n
        //\n-----END PRIVATE KEY-----\n
//        let privateKeyPem = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDwd49n/ZXxKUlA\nwrjSqa7v4tuDIJQ9J/+0KedRrjXGToHLjq20hKFFLP5UgSTcaunP7DSV6W9F3QjV\nH+pkk2exwugqeY3ePisHhDzQGIdUA64RtnwnH17MZZP0SOuqiM+K8elR4Fv2M7VF\nHWkiG+Imo1e6EY9D7QnhA7gK8ViULB4OOn8cbWVuuH5GoYnq78EKJbuzhJLGH5La\nl3YUzXzp7A3dod5z0CD9nG4u56bA5xnPQ9AfDEr2F+eRi5Bpxifg8IHMg+1MsPx3\n04llVWoAECHc8QHLmC7mNSDKxfZrnDNc1qOWzllHXjAD4QXzfiNFCWCc+TXS5yF5\npBoPqdFfAgMBAAECggEANMliKydRK4PvJy63qNMD6ngHzPSxZe1qZe/O7jDKcDJa\nrscu3ZJB3rAeUomZAGPd2L1W29PHD/SSFErxxstO94g8M9rEKFXIV1mRifLgfjJi\nm1POVD5ALqlbvcPmK+TlfnBVUhpoxZabQ8VNh2XMksPHpbpmEzitMv6Af7J0Se4q\naQ+OjBWlaCbqx0W62vtWP/ESv5eygLp9EchnaiVaIViTX+CWtWkzj2UrjQ1wlA3J\nq91BEQbQ31Vwq9anser1JZmm4FDLdwasuKUGl5YHaHKsC0jAHMeq393TlxwNhWKA\nfcsMlr+VM5JKwljCkjJNEZOGHuW3Ajg0U+BwX1IpZQKBgQD6mKYwWIEBh+2dbQSn\nXVBaLaEpLn9C7eB8Y6ZU5cbHMyY0x8hDDBp6j0ToJP9rbKOsCqXEhUyRyLk+NW5F\nVyeB9l3yfAEEuzBfHKpWnV6OtdIjorT9J5bAG6lpWtv3DTmQMniK3zmv3w8IM6Dt\nrMt/K9DHCOOTOnwCi5RrZqRX1QKBgQD1pv7AkTk6FEmDiprztlL2KgQQ9s7yt/5/\nWWdRIUZ2Y4tjptJ4Tjh5ushlEgxcb5SMukn8StdrIMiVP0OIb4WZ6/taEK35l4qH\n2s4atAX/8m8Y1wHeH75IWsQrlS6XxTyjtj19hHaLpwISq9MkDEfntfP7IQvXSTPe\nQSgZyYNyYwKBgE24pmJ8MJau981JkJXv5Qny+PbyytmROXya022lTj9d582a4Mua\np2O3p6FwSB+jNCgZrUwEI7lbTcizfZ3X6BLwvDaGqzIydFArbdErQbZ1QdV3kzao\n3qJ6cdKRMYOwAFhuruAzV4rqXZknmhPc8chhaIEyipKRIwEPFVsyHGp5AoGAJ3Nr\nREfOVfp+F+cBnZQxXKFAx+yrLaXI9HDKO+hJJag08YsQEAwX28zYdAri+1FcHQGp\n8h+e2vCH5hgj41xtq1uPoVY+anAg6lKEeRtiP0mS9/1HqoGUkJArIwixU+R0KaKR\n23+TfjgTCCaaIRbr0VWSWkljWm7CKrZyFzoapxsCgYEA5YhXi6zaHPqd4FcY9D2f\n5jYHnBKJipshbPAIOE0/tpjyniAuj/ZUBDZFqm5NLi1ppC/hFFbFonlaCOjcRDqQ\nUG8EJFRG3EqKzHw3vw3V3cQBE7BCf5PDcAO/R6zw2lOac5f3SmcRI0WysLERb0IE\nNrj7sKI5QZmcixYyG9G3eao=";
//        
//        //-----BEGIN CERTIFICATE-----\n
//        //\n-----END CERTIFICATE-----\n
//        let cerBase64 = "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";
//        createP12(pemCertificate: cerBase64, pemPrivateKey: privateKeyPem)
// 
//        debugPrint("")
    }
    

    func createP12(pemCertificate: String, pemPrivateKey: String) {
        // Read certificate
        let buffer = BIO_new(BIO_s_mem())
        pemCertificate.data(using: .utf8)!.withUnsafeBytes({ (bytes: UnsafePointer<Int8>) -> Void in
            BIO_puts(buffer, bytes)
        })
        let certificate = PEM_read_bio_X509(buffer, nil, nil, nil)
        X509_print_fp(stdout, certificate)
        // Read private key
        let privateKeyBuffer = BIO_new(BIO_s_mem())
        pemPrivateKey.data(using: .utf8)!.withUnsafeBytes({ (bytes: UnsafePointer<Int8>) -> Void in
            BIO_puts(privateKeyBuffer, bytes)
        })
        let privateKey = PEM_read_bio_PrivateKey(privateKeyBuffer, nil, nil, nil)
        PEM_write_PrivateKey(stdout, privateKey, nil, nil, 0, nil, nil)
        // Check if private key matches certificate
        guard X509_check_private_key(certificate, privateKey) == 1 else {
            NSLog("Private key does not match certificate")
            return
        }
        // Set OpenSSL parameters
//        OPENSSL_add_all_algorithms_noconf()
//        ERR_load_crypto_strings()
        // Create P12 keystore
        let passPhrase = UnsafeMutablePointer(mutating: ("123456" as NSString).utf8String)
        let name = UnsafeMutablePointer(mutating: ("SSL Certificate" as NSString).utf8String)
        guard let p12 = PKCS12_create(passPhrase, name, privateKey, certificate, nil, 0, 0, 0, 0, 0) else {
            NSLog("Cannot create P12 keystore:")
            ERR_print_errors_fp(stderr)
            return
        }
        // Save P12 keystore
        let fileManager = FileManager.default
        let tempDirectory = NSTemporaryDirectory() as NSString
        let path = tempDirectory.appendingPathComponent("ssl.p12")
        fileManager.createFile(atPath: path, contents: nil, attributes: nil)
        guard let fileHandle = FileHandle(forWritingAtPath: path) else {
            NSLog("Cannot open file handle: \(path)")
            return
        }
        let p12File = fdopen(fileHandle.fileDescriptor, "w")
        i2d_PKCS12_fp(p12File, p12)
        fclose(p12File)
        fileHandle.closeFile()
    }
    
    func encode(){
        struct ASClaims: Claims {
            let iss: String
            let iat: Date
            let exp: Date
            let aud: String
//            let scope:[String]
        }
        //最多申请20分钟的
        let myHeader = Header(kid: "QCF8Y8LV2V")
        let myClaims = ASClaims(iss: "f5032362-922e-4b3e-9209-c672dd107730", iat: Date(), exp: Date(timeIntervalSinceNow: 60*20), aud: "appstoreconnect-v1")
        var myJWT = JWT(header: myHeader, claims: myClaims)

        let privateKeyPath = URL(fileURLWithPath: Bundle.main.path(forResource: "AuthKey_QCF8Y8LV2V.p8", ofType: nil)!)
        let privateKey: Data = try! Data(contentsOf: privateKeyPath, options: .alwaysMapped)
        
        let jwtSigner = JWTSigner.es256(privateKey: privateKey)
        let signedJWT = try! myJWT.sign(using: jwtSigner)
        
        print(signedJWT)
    }
    
    func genCsr(){
        let tagPrivate = "com.csr.private.rsa256"
        let tagPublic = "com.csr.public.rsa256"
        let keyAlgorithm = KeyAlgorithm.rsa(signatureType: .sha256)
        let sizeOfKey = keyAlgorithm.availableKeySizes.last!

        let (potentialPrivateKey, potentialPublicKey) = self.generateKeysAndStoreInKeychain(keyAlgorithm, keySize: sizeOfKey, tagPrivate: tagPrivate, tagPublic: tagPublic)
        guard let privateKey = potentialPrivateKey, let publicKey = potentialPublicKey else {
//                XCTAssertNotNil(potentialPrivateKey, "Private key not generated")
//                XCTAssertNotNil(potentialPublicKey, "Public key not generated")
                return
        }
        
        let publicKeyStr = try! PublicKey(reference: publicKey)
        let privateKeyStr = try! PrivateKey(reference: privateKey)
        
    
        
        print("privateKey\n")
        print(try! publicKeyStr.pemString())
        
        print("publicKey\n")
        print(try! privateKeyStr.pemString())
        
        print("\n")

        let (potentialPublicKeyBits, potentialPublicKeyBlockSize) = self.getPublicKeyBits(keyAlgorithm, publicKey: publicKey, tagPublic: tagPublic)
        guard let publicKeyBits = potentialPublicKeyBits, potentialPublicKeyBlockSize != nil else {
//                XCTAssertNotNil(potentialPublicKeyBits, "Private key bits not generated")
//                XCTAssertNotNil(potentialPublicKeyBlockSize, "Public key block size not generated")
                return
        }

        // Initiale CSR
        let csr = CertificateSigningRequest(commonName: "CertificateSigningRequest Test",
                                            organizationName: "Test", organizationUnitName: "Test",
                                            countryName: "US", stateOrProvinceName: "KY",
                                            localityName: "Test",
                                            emailAddress: "netrecon@cs.uky.edu", description: "hello",
                                            keyAlgorithm: keyAlgorithm)
        // Build the CSR
        
        //CSR string no header and footer
        let csrBuild  = csr.buildAndEncodeDataAsString(publicKeyBits, privateKey: privateKey)
        //CSR string with header and footer
        let csrBuild2 = csr.buildCSRAndReturnString(publicKeyBits, privateKey: privateKey)
        if let csrRegular = csrBuild {
            print("CSR string no header and footer")
            print(csrRegular)
//            XCTAssertGreaterThan(csrBuild!.count, 0, "CSR contains no data")
        } else {
//            XCTAssertNotNil(csrBuild, "CSR with header not generated")
        }
        
        if let csrWithHeaderFooter = csrBuild2 {
            print("CSR string with header and footer")
            print(csrWithHeaderFooter)
//            XCTAssertTrue(csrBuild2!.contains("BEGIN"), "CSR string builder isn't complete")
        } else {
//            XCTAssertNotNil(csrBuild2, "CSR with header not generated")
        }
    }


    
    func generateKeysAndStoreInKeychain(_ algorithm: KeyAlgorithm, keySize: Int,
                                        tagPrivate: String, tagPublic: String) -> (SecKey?, SecKey?) {
        let publicKeyParameters: [String: Any] = [
            String(kSecAttrIsPermanent): true,
            String(kSecAttrAccessible): kSecAttrAccessibleAfterFirstUnlock,
            String(kSecAttrApplicationTag): tagPublic.data(using: .utf8)!
        ]

        var privateKeyParameters: [String: Any] = [
            String(kSecAttrIsPermanent): true,
            String(kSecAttrAccessible): kSecAttrAccessibleAfterFirstUnlock,
            String(kSecAttrApplicationTag): tagPrivate.data(using: .utf8)!
        ]

        #if !targetEnvironment(simulator)
            // This only works for Secure Enclave consisting of 256 bit key,
            // note, the signatureType is irrelevant for this check
            if algorithm.type == KeyAlgorithm.ec(signatureType: .sha1).type {
                let access = SecAccessControlCreateWithFlags(kCFAllocatorDefault,
                                                             kSecAttrAccessibleAfterFirstUnlock,
                                                             .privateKeyUsage,
                                                             nil)!   // Ignore error

                privateKeyParameters[String(kSecAttrAccessControl)] = access
            }
        #endif

        // Define what type of keys to be generated here
        var parameters: [String: Any] = [
            String(kSecAttrKeyType): algorithm.secKeyAttrType,
            String(kSecAttrKeySizeInBits): keySize,
            String(kSecReturnRef): true,
            String(kSecPublicKeyAttrs): publicKeyParameters,
            String(kSecPrivateKeyAttrs): privateKeyParameters
        ]

        #if !targetEnvironment(simulator)
            // iOS only allows EC 256 keys to be secured in enclave.
            // This will attempt to allow any EC key in the enclave,
            // assuming iOS will do it outside of the enclave if it
            // doesn't like the key size, note: the signatureType is irrelavent for this check
            if algorithm.type == KeyAlgorithm.ec(signatureType: .sha1).type {
                parameters[String(kSecAttrTokenID)] = kSecAttrTokenIDSecureEnclave
            }
        #endif

        // Use Apple Security Framework to generate keys, save them to application keychain
        var error: Unmanaged<CFError>?
        let privateKey = SecKeyCreateRandomKey(parameters as CFDictionary, &error)
        if privateKey == nil {
            print("Error creating keys occured: \(error!.takeRetainedValue() as Error), keys weren't created")
            return (nil, nil)
        }

        // Get generated public key
        let query: [String: Any] = [
            String(kSecClass): kSecClassKey,
            String(kSecAttrKeyType): algorithm.secKeyAttrType,
            String(kSecAttrApplicationTag): tagPublic.data(using: .utf8)!,
            String(kSecReturnRef): true
        ]

        var publicKeyReturn: CFTypeRef?
        let result = SecItemCopyMatching(query as CFDictionary, &publicKeyReturn)
        if result != errSecSuccess {
            print("Error getting publicKey fron keychain occured: \(result)")
            return (privateKey, nil)
        }
        // swiftlint:disable:next force_cast
        let publicKey = publicKeyReturn as! SecKey?
        return (privateKey, publicKey)
    }

    func getPublicKeyBits(_ algorithm: KeyAlgorithm, publicKey: SecKey, tagPublic: String) -> (Data?, Int?) {

        // Set block size
        let keyBlockSize = SecKeyGetBlockSize(publicKey)
        // Ask keychain to provide the publicKey in bits
        let query: [String: Any] = [
            String(kSecClass): kSecClassKey,
            String(kSecAttrKeyType): algorithm.secKeyAttrType,
            String(kSecAttrApplicationTag): tagPublic.data(using: .utf8)!,
            String(kSecReturnData): true
        ]

        var tempPublicKeyBits: CFTypeRef?
        var _ = SecItemCopyMatching(query as CFDictionary, &tempPublicKeyBits)

        guard let keyBits = tempPublicKeyBits as? Data else {
            return (nil, nil)
        }

        return (keyBits, keyBlockSize)
    }

    

}
