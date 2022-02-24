.class public Lcom/xiaomi/accountsdk/diagnosis/d/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/File;Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 3

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-direct {v0}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "G25iajFoZiJzLmFAWR5IWVFfXVkeU19d"

    invoke-static {p1}, Lcom/xiaomi/accountsdk/diagnosis/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setEndpoint(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableHttps(Z)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->enableCdnForUpload(Z)V

    const/high16 p1, 0x500000

    invoke-virtual {v0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setUploadPartSize(I)V

    new-instance p1, Lcom/xiaomi/infra/galaxy/fds/android/auth/SignatureCredential;

    const-string v1, "OUtaT1NwVAs2RlAEeAcEdQV4"

    invoke-static {v1}, Lcom/xiaomi/accountsdk/diagnosis/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PUtCcHIzdy5ZcDZaamQbUmR+d0QIWGZ0ZwVbeWABfHt8SF9oekJXBA=="

    invoke-static {v2}, Lcom/xiaomi/accountsdk/diagnosis/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/xiaomi/infra/galaxy/fds/android/auth/SignatureCredential;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setCredential(Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;)V

    new-instance p1, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;

    invoke-direct {p1, v0}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;-><init>(Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;)V

    :try_start_0
    const-string v0, "HGlhZ24pcy9z"

    invoke-static {v0}, Lcom/xiaomi/accountsdk/diagnosis/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1, p0}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClient;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object p0
    :try_end_0
    .catch Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/xiaomi/accountsdk/diagnosis/d/a;->a([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static a([B)[B
    .locals 8

    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "0xCAFEBABE"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    rem-int v3, v2, v3

    aget-byte v3, v4, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v2, p0

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    add-int/lit8 v4, v4, 0x1

    and-int/lit16 v4, v4, 0xff

    aget-byte v6, v0, v4

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, v0, v4

    aget-byte v7, v0, v5

    aput-byte v7, v0, v4

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    aget-byte v6, v0, v5

    aget-byte v7, v0, v4

    add-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    aget-byte v7, p0, v1

    aget-byte v6, v0, v6

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method
