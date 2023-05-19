.class public Lcom/huawei/hms/scankit/p/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/scankit/p/w;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([B)Ljava/security/PublicKey;
    .locals 1

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p1, "RSA"

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1
.end method

.method private a([BLjava/security/PublicKey;)[B
    .locals 3

    const-string v0, "Rsa"

    if-eqz p2, :cond_0

    const-string v1, "RSA/ECB/OAEPWITHSHA-1ANDMGF1PADDING"

    :try_start_0
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/UnsupportedEncodingException;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "The loaded public key is null"

    :try_start_1
    invoke-direct {p1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const-string p1, "rsaEncrypt(): doFinal - The provided block is not filled with"

    goto :goto_0

    :catch_1
    const-string p1, "rsaEncrypt():False filling parameters!"

    goto :goto_0

    :catch_2
    const-string p1, "rsaEncrypt():  No such filling parameters "

    goto :goto_0

    :catch_3
    const-string p1, "rsaEncrypt(): init - Invalid key!"

    goto :goto_0

    :catch_4
    const-string p1, "rsaEncrypt(): getInstance - No such algorithm,transformation"

    goto :goto_0

    :catch_5
    const-string p1, "rsaEncrypt(): getBytes - Unsupported coding format!"

    :goto_0
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/p/T;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "Rsa"

    const-string p2, "No RSA decryption method"

    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const-string v1, "Rsa"

    if-eqz p2, :cond_1

    array-length v2, p2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/huawei/hms/scankit/p/u;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/x;->a([B)Ljava/security/PublicKey;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/huawei/hms/scankit/p/x;->a([BLjava/security/PublicKey;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/u;->a([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "encrypt(): Invalid key specification"

    goto :goto_0

    :catch_1
    const-string p1, "encrypt(): getInstance - No such algorithm,transformation"

    :goto_0
    invoke-static {v1, p1}, Lcom/huawei/hms/scankit/p/T;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_1
    const-string p1, "encrypt: content is empty or null"

    invoke-static {v1, p1}, Lcom/huawei/hms/scankit/p/T;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/scankit/p/x;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "Rsa"

    const-string p2, "Unsupported encoding exception,utf-8"

    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method
