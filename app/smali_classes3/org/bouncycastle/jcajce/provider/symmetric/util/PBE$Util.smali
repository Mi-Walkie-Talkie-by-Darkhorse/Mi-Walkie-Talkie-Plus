.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PKCS5 scheme 1 only supports MD2, MD5 and SHA1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/MD2Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/MD2Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    :goto_0
    return-object v0

    :pswitch_2
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-ne p0, v0, :cond_3

    :cond_2
    packed-switch p1, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown digest scheme for PBE PKCS5S2 encryption."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/MD2Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/MD2Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/TigerDigest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/TigerDigest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    packed-switch p1, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown digest scheme for PBE encryption."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/MD2Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/MD2Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    goto/16 :goto_0

    :pswitch_c
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    goto/16 :goto_0

    :pswitch_d
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    goto/16 :goto_0

    :pswitch_e
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    goto/16 :goto_0

    :pswitch_f
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/TigerDigest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/TigerDigest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    goto/16 :goto_0

    :pswitch_10
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    goto/16 :goto_0

    :pswitch_11
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/GOST3411Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/GOST3411Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_b
        :pswitch_11
    .end packed-switch
.end method

.method public static makePBEMacParameters(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 6

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v4

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v4, v2

    if-eq v0, v4, :cond_0

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    invoke-static {p1, p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object v2

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v3

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v4, v2

    if-eq v0, v4, :cond_0

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static makePBEMacParameters(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v2

    invoke-static {v0, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v3

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v4, v2

    if-eq v0, v4, :cond_2

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public static makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 5

    const/4 v2, 0x0

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    invoke-static {p1, p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object v3

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v1

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v4

    invoke-virtual {v0, v3, v1, v4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    if-eqz p4, :cond_0

    invoke-virtual {v0, p3, p4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    :goto_0
    move v1, v2

    :goto_1
    array-length v4, v3

    if-eq v1, v4, :cond_1

    aput-byte v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static makePBEParameters(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 5

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->shouldTryWrongPKCS12()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v0, 0x2

    new-array v0, v0, [B

    move-object v2, v0

    :goto_0
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v4

    invoke-virtual {v1, v2, v0, v4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    :goto_1
    const-string v0, "DES"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    :cond_2
    :goto_2
    move v0, v3

    :goto_3
    array-length v4, v2

    if-eq v0, v4, :cond_5

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    goto :goto_2

    :cond_5
    return-object v1

    :cond_6
    move-object v2, v0

    goto :goto_0
.end method

.method public static makePBEParameters([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p5, :cond_0

    instance-of v0, p5, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p5, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    invoke-virtual {p5}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v1

    invoke-virtual {p5}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v3

    invoke-virtual {v0, p0, v1, v3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    if-eqz p4, :cond_3

    invoke-virtual {v0, p3, p4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    :goto_0
    const-string v0, "DES"

    invoke-virtual {p6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    array-length v3, p0

    if-eq v0, v3, :cond_5

    aput-byte v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    goto :goto_1

    :cond_5
    return-object v1
.end method
