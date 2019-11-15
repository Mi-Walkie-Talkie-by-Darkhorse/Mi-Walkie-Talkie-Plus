.class public Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;
.super Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BouncyCastleStore"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;-><init>(I)V

    return-void
.end method


# virtual methods
.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Wrong version of key store."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v4, v1, [B

    array-length v1, v4

    const/16 v3, 0x14

    if-eq v1, v3, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Key store corrupted."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v6, v4}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    if-ltz v5, :cond_4

    const/16 v1, 0x1000

    if-le v5, v1, :cond_5

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Key store corrupted."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez v0, :cond_6

    const-string v1, "OldPBEWithSHAAndTwofish-CBC"

    :goto_0
    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/CipherInputStream;

    invoke-direct {v1, v6, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    new-instance v2, Lorg/bouncycastle/crypto/io/DigestInputStream;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/crypto/io/DigestInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->loadStore(Ljava/io/InputStream;)V

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    invoke-static {v2, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "KeyStore integrity check failed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v1, "PBEWithSHAAndTwofish-CBC"

    goto :goto_0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v0, 0x14

    new-array v4, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0x3ff

    add-int/lit16 v5, v0, 0x400

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->version:I

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v0, v4

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v1, "PBEWithSHAAndTwofish-CBC"

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v1, v6, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    new-instance v0, Lorg/bouncycastle/crypto/io/DigestOutputStream;

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/io/DigestOutputStream;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    new-instance v2, Lorg/bouncycastle/util/io/TeeOutputStream;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->saveStore(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/io/DigestOutputStream;->getDigest()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/CipherOutputStream;->write([B)V

    invoke-virtual {v1}, Ljavax/crypto/CipherOutputStream;->close()V

    return-void
.end method
