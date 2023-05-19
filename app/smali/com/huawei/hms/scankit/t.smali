.class public Lcom/huawei/hms/scankit/t;
.super Lcom/huawei/hms/hmsscankit/api/IRemoteHmsDecoderDelegate$Stub;
.source "IRemoteHmsDecoderDelegateImpl.java"


# static fields
.field private static volatile a:Lcom/huawei/hms/scankit/t;


# instance fields
.field private volatile b:Lcom/huawei/hms/scankit/p/Kc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/t;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/t;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/t;->a:Lcom/huawei/hms/scankit/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/hmsscankit/api/IRemoteHmsDecoderDelegate$Stub;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/scankit/t;->b:Lcom/huawei/hms/scankit/p/Kc;

    return-void
.end method

.method private a(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Landroid/os/Bundle;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object p1
.end method

.method static a()Lcom/huawei/hms/scankit/t;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/t;->a:Lcom/huawei/hms/scankit/t;

    return-object v0
.end method

.method private a(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/ml/scan/HmsScan;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "ScankitRemoteS"

    const-string p2, "bitmap is null"

    .line 5
    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v0, [Lcom/huawei/hms/ml/scan/HmsScan;

    return-object p1

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 7
    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 8
    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "PhotoMode"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 9
    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "FormatValue"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 10
    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string v3, "TransType"

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 11
    sput p2, Lcom/huawei/hms/hmsscankit/DetailRect;->HMSSCAN_SDK_VALUE:I

    const/4 v3, 0x2

    if-lt p2, v3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 12
    invoke-static {v2}, Lcom/huawei/hms/scankit/util/b;->b(I)I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 13
    :cond_3
    :goto_1
    instance-of v3, p1, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    .line 14
    check-cast p1, Landroid/graphics/Bitmap;

    .line 15
    invoke-static {}, Lcom/huawei/hms/scankit/D;->a()Lcom/huawei/hms/scankit/D;

    move-result-object v0

    iget-object v3, p0, Lcom/huawei/hms/scankit/t;->b:Lcom/huawei/hms/scankit/p/Kc;

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/huawei/hms/scankit/D;->a(Landroid/graphics/Bitmap;IZLcom/huawei/hms/scankit/p/Kc;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    if-nez p2, :cond_4

    .line 16
    invoke-static {p1}, Lcom/huawei/hms/scankit/util/b;->a([Lcom/huawei/hms/ml/scan/HmsScan;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    :cond_4
    return-object p1

    :cond_5
    new-array p1, v0, [Lcom/huawei/hms/ml/scan/HmsScan;

    return-object p1
.end method

.method private a(Lcom/huawei/hms/hmsscankit/DetailRect;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/ml/scan/HmsScan;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p1, "ScankitRemoteS"

    const-string p2, "bytebuffer is null"

    .line 17
    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v0, [Lcom/huawei/hms/ml/scan/HmsScan;

    return-object p1

    .line 18
    :cond_0
    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p3, :cond_3

    .line 19
    invoke-static {p3}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 20
    invoke-static {p3}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "FormatValue"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 21
    invoke-static {p3}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "PhotoMode"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 22
    invoke-static {p3}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    const-string v3, "TransType"

    invoke-virtual {p3, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    .line 23
    sput p3, Lcom/huawei/hms/hmsscankit/DetailRect;->HMSSCAN_SDK_VALUE:I

    const/4 v3, 0x2

    if-lt p3, v3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    .line 24
    invoke-static {v1}, Lcom/huawei/hms/scankit/util/b;->b(I)I

    move-result v1

    :cond_2
    move v5, v1

    move v6, v2

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 25
    :goto_1
    instance-of v1, p2, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_7

    .line 26
    move-object v2, p2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 27
    invoke-static {}, Lcom/huawei/hms/scankit/D;->a()Lcom/huawei/hms/scankit/D;

    move-result-object v1

    const/16 p2, 0x3e8

    if-nez p1, :cond_4

    const/16 v3, 0x3e8

    goto :goto_2

    :cond_4
    iget v0, p1, Lcom/huawei/hms/hmsscankit/DetailRect;->width:I

    move v3, v0

    :goto_2
    if-nez p1, :cond_5

    const/16 v4, 0x3e8

    goto :goto_3

    :cond_5
    iget p1, p1, Lcom/huawei/hms/hmsscankit/DetailRect;->height:I

    move v4, p1

    :goto_3
    iget-object v7, p0, Lcom/huawei/hms/scankit/t;->b:Lcom/huawei/hms/scankit/p/Kc;

    invoke-virtual/range {v1 .. v7}, Lcom/huawei/hms/scankit/D;->a(Ljava/nio/ByteBuffer;IIIZLcom/huawei/hms/scankit/p/Kc;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    if-nez p3, :cond_6

    .line 28
    invoke-static {p1}, Lcom/huawei/hms/scankit/util/b;->a([Lcom/huawei/hms/ml/scan/HmsScan;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    :cond_6
    return-object p1

    :cond_7
    new-array p1, v0, [Lcom/huawei/hms/ml/scan/HmsScan;

    return-object p1
.end method


# virtual methods
.method public decodeInBitmap(Lcom/huawei/hms/hmsscankit/DetailRect;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/ml/scan/HmsScan;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "Ha error"

    const-string v0, "IRemoteDecoderDelegateImpl"

    .line 1
    invoke-direct {p0, p3}, Lcom/huawei/hms/scankit/t;->a(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Landroid/os/Bundle;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/huawei/hms/scankit/t;->b:Lcom/huawei/hms/scankit/p/Kc;

    if-nez v2, :cond_0

    .line 3
    :try_start_0
    new-instance v2, Lcom/huawei/hms/scankit/p/Kc;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "MultiProcessor"

    :try_start_1
    invoke-direct {v2, v1, v3}, Lcom/huawei/hms/scankit/p/Kc;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/huawei/hms/scankit/t;->b:Lcom/huawei/hms/scankit/p/Kc;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :catch_1
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/huawei/hms/scankit/t;->a(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    return-object p1
.end method

.method public detectWithByteBuffer(Lcom/huawei/hms/hmsscankit/DetailRect;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/ml/scan/HmsScan;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Ha error"

    const-string v1, "IRemoteDecoderDelegateImpl"

    .line 1
    invoke-direct {p0, p3}, Lcom/huawei/hms/scankit/t;->a(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Landroid/os/Bundle;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lcom/huawei/hms/scankit/t;->b:Lcom/huawei/hms/scankit/p/Kc;

    if-nez v3, :cond_0

    .line 3
    :try_start_0
    new-instance v3, Lcom/huawei/hms/scankit/p/Kc;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "MultiProcessor"

    :try_start_1
    invoke-direct {v3, v2, v4}, Lcom/huawei/hms/scankit/p/Kc;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/huawei/hms/scankit/t;->b:Lcom/huawei/hms/scankit/p/Kc;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :catch_1
    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/scankit/t;->a(Lcom/huawei/hms/hmsscankit/DetailRect;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    return-object p1
.end method
