.class public Lcom/ifengyu/blelib/utils/b;
.super Ljava/lang/Object;
.source "EncryptUtils.java"


# static fields
.field private static a:Ljava/lang/String; = "AES"

.field private static b:Ljava/lang/String; = "AES/CBC/NoPadding"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a([BI)[B
    .locals 2

    .line 1
    array-length v0, p0

    array-length v1, p0

    rem-int/2addr v1, p1

    sub-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 2
    new-array p1, v0, [B

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static b([B[B[B)[B
    .locals 6

    .line 1
    sget-object v2, Lcom/ifengyu/blelib/utils/b;->a:Ljava/lang/String;

    sget-object v3, Lcom/ifengyu/blelib/utils/b;->b:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/ifengyu/blelib/utils/b;->d([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static c([B[B[B)[B
    .locals 6

    .line 1
    sget-object v2, Lcom/ifengyu/blelib/utils/b;->a:Ljava/lang/String;

    sget-object v3, Lcom/ifengyu/blelib/utils/b;->b:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/ifengyu/blelib/utils/b;->d([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    move-result-object p0

    return-object p0
.end method

.method private static d([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 1
    array-length v1, p0

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_4

    .line 2
    :cond_0
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    if-eqz p5, :cond_1

    .line 4
    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p2

    invoke-static {p0, p2}, Lcom/ifengyu/blelib/utils/b;->a([BI)[B

    move-result-object p0

    :cond_1
    const/4 p2, 0x1

    const/4 p3, 0x2

    if-eqz p4, :cond_4

    .line 5
    array-length v2, p4

    if-nez v2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    if-eqz p5, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x2

    .line 7
    :goto_0
    invoke-virtual {p1, p2, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_3

    :cond_4
    :goto_1
    if-eqz p5, :cond_5

    goto :goto_2

    :cond_5
    const/4 p2, 0x2

    .line 8
    :goto_2
    invoke-virtual {p1, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 9
    :goto_3
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_4
    return-object v0
.end method
