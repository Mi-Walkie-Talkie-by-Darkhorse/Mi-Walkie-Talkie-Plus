.class public Lcom/xiaomi/push/service/bp;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/security/interfaces/RSAPublicKey;

.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/push/service/bp;->a:[B

    :try_start_0
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    sput-object v0, Lcom/xiaomi/push/service/bp;->a:Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "rsa key pair init failure!!!"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        -0x7ft
        -0x61t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        -0x7ft
        -0x73t
        0x0t
        0x30t
        -0x7ft
        -0x77t
        0x2t
        -0x7ft
        -0x7ft
        0x0t
        -0x6dt
        -0x26t
        -0x72t
        0x1at
        -0x48t
        0x4et
        0x10t
        0x46t
        -0x5at
        0x71t
        -0x1et
        0x24t
        0x55t
        -0x3t
        -0x2bt
        0x7bt
        0x3dt
        -0x62t
        0x4t
        -0x10t
        0x43t
        0x13t
        -0x5at
        -0x49t
        -0x5t
        -0x59t
        0x24t
        0x2ct
        -0x1bt
        0x3bt
        -0x7bt
        0x48t
        -0x49t
        -0x30t
        0x31t
        0xdt
        0x10t
        0x32t
        -0x1bt
        -0x52t
        0x12t
        -0x1ct
        0x54t
        0x0t
        -0x29t
        0x10t
        0x45t
        -0x27t
        0x7t
        0x52t
        0x38t
        0x4ft
        -0x25t
        0x28t
        0x55t
        0x6bt
        0x62t
        0x21t
        0x7bt
        -0x22t
        -0x31t
        0x6ft
        -0xbt
        0x31t
        0x1ct
        0x75t
        -0x4at
        0x72t
        -0x7at
        -0x1dt
        -0x54t
        0x52t
        0x16t
        -0x7at
        0x2at
        -0x28t
        -0x4ft
        0x12t
        -0x74t
        -0x2at
        0x65t
        -0x46t
        0x2ct
        0xbt
        0x3et
        -0x31t
        -0x3t
        -0x16t
        -0x2t
        0x42t
        0x5at
        -0x74t
        -0x4bt
        -0x63t
        0x22t
        0x79t
        0x45t
        0xat
        -0x51t
        -0x39t
        0x59t
        -0x17t
        -0x24t
        -0x3ct
        -0x51t
        0x43t
        -0x72t
        0xat
        0x4ft
        0x64t
        0x1dt
        0x2ft
        -0x18t
        0x6et
        -0x42t
        -0x7t
        0x57t
        0x10t
        -0x7dt
        -0x5bt
        -0x2bt
        -0x67t
        0x43t
        -0x14t
        0x29t
        0x75t
        -0x25t
        -0xbt
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/push/service/bp;->a:Ljava/security/interfaces/RSAPublicKey;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    sget-object v2, Lcom/xiaomi/push/service/bp;->a:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v2}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    invoke-static {v0, v3, p0, v2}, Lcom/xiaomi/push/service/bp;->a(Ljavax/crypto/Cipher;I[BI)[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v1
.end method

.method private static a(Ljavax/crypto/Cipher;I[BI)[B
    .locals 4

    if-eqz p0, :cond_4

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x2

    div-int/lit8 p3, p3, 0x8

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, -0xb

    :goto_0
    :try_start_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    array-length v3, p2

    if-le v3, v1, :cond_3

    array-length v3, p2

    sub-int/2addr v3, v1

    if-le v3, p3, :cond_2

    invoke-virtual {p0, p2, v1, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    goto :goto_2

    :cond_2
    array-length v3, p2

    sub-int/2addr v3, v1

    invoke-virtual {p0, p2, v1, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    :goto_2
    array-length v3, v1

    invoke-virtual {p1, v1, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v2, p3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method
