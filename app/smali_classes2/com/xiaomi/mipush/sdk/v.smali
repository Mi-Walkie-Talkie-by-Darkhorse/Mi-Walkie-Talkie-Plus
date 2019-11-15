.class public Lcom/xiaomi/mipush/sdk/v;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/mipush/sdk/v;->a:[B

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

.method protected static a(Landroid/content/Context;Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;)Lcom/xiaomi/xmpush/thrift/ac;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/a",
            "<TT;*>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/xiaomi/xmpush/thrift/a;",
            ")",
            "Lcom/xiaomi/xmpush/thrift/ac;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/xmpush/thrift/a;->a:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {p2, v0}, Lcom/xiaomi/xmpush/thrift/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c;->c()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/v;->a(Landroid/content/Context;Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ac;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ac;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/a",
            "<TT;*>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/xiaomi/xmpush/thrift/a;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/xmpush/thrift/ac;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/xiaomi/xmpush/thrift/ar;->a(Lorg/apache/thrift/a;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "invoke convertThriftObjectToBytes method, return null."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/xiaomi/xmpush/thrift/ac;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/ac;-><init>()V

    if-eqz p3, :cond_2

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "regSecret is empty, return null"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/string/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    :try_start_0
    invoke-static {v1, v0}, Lcom/xiaomi/mipush/sdk/v;->b([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    new-instance v1, Lcom/xiaomi/xmpush/thrift/v;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/v;-><init>()V

    const-wide/16 v4, 0x5

    iput-wide v4, v1, Lcom/xiaomi/xmpush/thrift/v;->a:J

    const-string v3, "fakeid"

    iput-object v3, v1, Lcom/xiaomi/xmpush/thrift/v;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/xiaomi/xmpush/thrift/ac;->a(Lcom/xiaomi/xmpush/thrift/v;)Lcom/xiaomi/xmpush/thrift/ac;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/ac;->a(Ljava/nio/ByteBuffer;)Lcom/xiaomi/xmpush/thrift/ac;

    invoke-virtual {v2, p2}, Lcom/xiaomi/xmpush/thrift/ac;->a(Lcom/xiaomi/xmpush/thrift/a;)Lcom/xiaomi/xmpush/thrift/ac;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/ac;->c(Z)Lcom/xiaomi/xmpush/thrift/ac;

    invoke-virtual {v2, p4}, Lcom/xiaomi/xmpush/thrift/ac;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ac;

    invoke-virtual {v2, p3}, Lcom/xiaomi/xmpush/thrift/ac;->a(Z)Lcom/xiaomi/xmpush/thrift/ac;

    invoke-virtual {v2, p5}, Lcom/xiaomi/xmpush/thrift/ac;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ac;

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "encryption error. "

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a([BI)Ljavax/crypto/Cipher;
    .locals 3

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcom/xiaomi/mipush/sdk/v;->a:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object v2
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/ac;)Lorg/apache/thrift/a;
    .locals 3

    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ac;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/string/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ac;->f()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/v;->a([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ac;->a()Lcom/xiaomi/xmpush/thrift/a;

    move-result-object v1

    iget-boolean v2, p1, Lcom/xiaomi/xmpush/thrift/ac;->c:Z

    invoke-static {v1, v2}, Lcom/xiaomi/mipush/sdk/v;->a(Lcom/xiaomi/xmpush/thrift/a;Z)Lorg/apache/thrift/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Lcom/xiaomi/xmpush/thrift/ar;->a(Lorg/apache/thrift/a;[B)V

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/mipush/sdk/d;

    const-string v2, "the aes decrypt failed."

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/mipush/sdk/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/ac;->f()[B

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/xiaomi/xmpush/thrift/a;Z)Lorg/apache/thrift/a;
    .locals 2

    sget-object v0, Lcom/xiaomi/mipush/sdk/w;->a:[I

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ah;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/ah;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ao;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/ao;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/xiaomi/xmpush/thrift/am;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/am;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/xiaomi/xmpush/thrift/aq;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/aq;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ak;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/ak;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/xiaomi/xmpush/thrift/x;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/x;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ab;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/ab;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/xiaomi/xmpush/thrift/aj;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/aj;-><init>()V

    goto :goto_0

    :pswitch_8
    if-eqz p1, :cond_0

    new-instance v0, Lcom/xiaomi/xmpush/thrift/af;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/af;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaomi/xmpush/thrift/y;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/y;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/y;->a(Z)V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ab;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/ab;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static a([B[B)[B
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/v;->a([BI)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b([B[B)[B
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/v;->a([BI)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method
