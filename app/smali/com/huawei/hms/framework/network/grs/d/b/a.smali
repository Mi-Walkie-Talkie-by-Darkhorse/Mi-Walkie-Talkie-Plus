.class public Lcom/huawei/hms/framework/network/grs/d/b/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    new-instance v0, Lb/b/c/a/a/a/d/a;

    invoke-direct {v0}, Lb/b/c/a/a/a/d/a;-><init>()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "grs_sp.bks"

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v0, Lb/b/c/a/a/a/c;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, ""

    :try_start_2
    invoke-direct {v0, p0, v1}, Lb/b/c/a/a/a/c;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance p0, Lb/b/c/a/a/a/b;

    invoke-direct {p0, v0}, Lb/b/c/a/a/a/b;-><init>(Ljavax/net/ssl/X509TrustManager;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
