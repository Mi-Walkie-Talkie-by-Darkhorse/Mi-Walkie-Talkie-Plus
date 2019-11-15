.class public abstract Lcom/mi/milinkforgame/sdk/util/crypt/Cryptor;
.super Ljava/lang/Object;
.source "Cryptor.java"


# static fields
.field private static final IV:[B

.field private static final RSA_1024_ENCYPT_LEN:I = 0x75


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mi/milinkforgame/sdk/util/crypt/Cryptor;->IV:[B

    return-void

    :array_0
    .array-data 1
        0x64t
        0x17t
        0x54t
        0x72t
        0x48t
        0x0t
        0x4t
        0x61t
        0x49t
        0x61t
        0x2t
        0x34t
        0x54t
        0x66t
        0x12t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 4

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x4

    aget-char v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decrypt([B[B)[B
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v5, Lcom/mi/milinkforgame/sdk/util/crypt/Cryptor;->IV:[B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v1, 0x0

    array-length v4, p0

    invoke-virtual {v3, p0, v1, v4}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v4

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v5

    if-nez v4, :cond_0

    move v3, v2

    :goto_0
    if-nez v5, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v1, v3

    if-gtz v1, :cond_2

    :goto_2
    return-object v0

    :cond_0
    array-length v1, v4

    move v3, v1

    goto :goto_0

    :cond_1
    array-length v1, v5

    goto :goto_1

    :cond_2
    new-array v1, v1, [B

    if-eqz v4, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v6, v4

    invoke-static {v4, v2, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v4

    :cond_3
    if-eqz v5, :cond_4

    const/4 v3, 0x0

    array-length v4, v5

    invoke-static {v5, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "crypt"

    invoke-static {v2, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static encrypt([B[B)[B
    .locals 4

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/mi/milinkforgame/sdk/util/crypt/Cryptor;->IV:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "crypt"

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static encryptRSA([BLjava/lang/String;)[B
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/util/crypt/Cryptor;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v5, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v6, p0

    const/16 v2, 0x75

    const/16 v1, 0x800

    new-array v1, v1, [B

    move v3, v0

    move v4, v0

    move v0, v2

    :goto_0
    add-int/lit8 v2, v4, 0x75

    if-le v2, v6, :cond_2

    sub-int v0, v6, v4

    move v2, v0

    :goto_1
    invoke-virtual {v5, p0, v4, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v7

    array-length v8, v7

    add-int v0, v3, v8

    array-length v9, v1

    if-le v0, v9, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v1, v9, v0, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v7, v0, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v4, v2

    add-int/2addr v3, v8

    if-lt v0, v6, :cond_1

    new-array v0, v3, [B

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "crypt"

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    move v4, v0

    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1
.end method

.method private static getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method
