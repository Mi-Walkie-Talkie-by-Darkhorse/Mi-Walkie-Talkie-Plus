.class public Lcom/huawei/hms/scankit/r;
.super Lcom/huawei/hms/hmsscankit/api/IRemoteDecoderDelegate$Stub;
.source "IRemoteDecoderDelegateImpl.java"


# static fields
.field private static volatile a:Lcom/huawei/hms/scankit/r;


# instance fields
.field private volatile b:Lcom/huawei/hms/scankit/p/Kc;

.field private volatile c:Lcom/huawei/hms/scankit/p/Pc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/r;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/r;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/r;->a:Lcom/huawei/hms/scankit/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/hmsscankit/api/IRemoteDecoderDelegate$Stub;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/scankit/r;->b:Lcom/huawei/hms/scankit/p/Kc;

    .line 3
    iput-object v0, p0, Lcom/huawei/hms/scankit/r;->c:Lcom/huawei/hms/scankit/p/Pc;

    return-void
.end method

.method static a()Lcom/huawei/hms/scankit/r;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/r;->a:Lcom/huawei/hms/scankit/r;

    return-object v0
.end method

.method private a(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/ml/scan/HmsScan;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "IRemoteDecoder"

    const-string p2, "bitmap is null"

    .line 2
    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v0, [Lcom/huawei/hms/ml/scan/HmsScan;

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 4
    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    .line 5
    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "FormatValue"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 6
    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "PhotoMode"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 7
    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string v4, "TransType"

    invoke-virtual {p2, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 8
    sput p2, Lcom/huawei/hms/hmsscankit/DetailRect;->HMSSCAN_SDK_VALUE:I

    const/4 v4, 0x2

    if-lt p2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 9
    invoke-static {v2}, Lcom/huawei/hms/scankit/util/b;->b(I)I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 10
    :cond_3
    :goto_1
    instance-of p2, p1, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_5

    .line 11
    invoke-static {}, Lcom/huawei/hms/scankit/D;->a()Lcom/huawei/hms/scankit/D;

    move-result-object p2

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/huawei/hms/scankit/r;->b:Lcom/huawei/hms/scankit/p/Kc;

    invoke-virtual {p2, p1, v2, v3, v0}, Lcom/huawei/hms/scankit/D;->b(Landroid/graphics/Bitmap;IZLcom/huawei/hms/scankit/p/Kc;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    if-nez v1, :cond_4

    .line 12
    invoke-static {p1}, Lcom/huawei/hms/scankit/util/b;->a([Lcom/huawei/hms/ml/scan/HmsScan;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    :cond_4
    return-object p1

    :cond_5
    new-array p1, v0, [Lcom/huawei/hms/ml/scan/HmsScan;

    return-object p1
.end method


# virtual methods
.method public buildBitmap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "BitmapContent"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "BitmapFormat"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "BitmapWidth"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "BitmapHeight"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v0, 0x1

    const-string v1, "BitmapMargin"

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "BitmapColor"

    const/4 v6, -0x1

    .line 8
    invoke-virtual {p1, v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v7, "BitmapBackColor"

    .line 9
    invoke-virtual {p1, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 10
    :try_start_0
    new-instance v6, Lcom/huawei/hms/scankit/p/pd;

    invoke-direct {v6}, Lcom/huawei/hms/scankit/p/pd;-><init>()V

    new-instance v7, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;

    invoke-direct {v7}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;-><init>()V

    .line 11
    invoke-virtual {v7, v0}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->setBitmapMargin(I)Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->setBitmapColor(I)Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->setBitmapBackgroundColor(I)Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->create()Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;

    move-result-object p1

    move-object v1, v6

    move-object v6, p1

    .line 12
    invoke-virtual/range {v1 .. v6}, Lcom/huawei/hms/scankit/p/pd;->a(Ljava/lang/String;IIILcom/huawei/hms/ml/scan/HmsBuildBitmapOption;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13
    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p1

    return-object p1

    .line 14
    :cond_0
    new-instance p1, Landroid/os/RemoteException;
    :try_end_0
    .catch Lcom/huawei/hms/hmsscankit/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "Bitmap is Null"

    :try_start_1
    invoke-direct {p1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lcom/huawei/hms/hmsscankit/WriterException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 15
    new-instance v0, Landroid/os/RemoteException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v0, "Bundle is Null"

    invoke-direct {p1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buildBitmapLog(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)V
    .locals 2

    const-string v0, "IRemoteDecoderDelegateImpl"

    if-eqz p1, :cond_3

    .line 1
    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 3
    iget-object v1, p0, Lcom/huawei/hms/scankit/r;->c:Lcom/huawei/hms/scankit/p/Pc;

    if-nez v1, :cond_2

    .line 4
    :try_start_0
    new-instance v1, Lcom/huawei/hms/scankit/p/Pc;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/p/Pc;-><init>()V

    iput-object v1, p0, Lcom/huawei/hms/scankit/r;->c:Lcom/huawei/hms/scankit/p/Pc;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/huawei/hms/scankit/r;->c:Lcom/huawei/hms/scankit/p/Pc;

    if-nez v0, :cond_2

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/huawei/hms/scankit/r;->c:Lcom/huawei/hms/scankit/p/Pc;

    if-nez v0, :cond_2

    return-void

    :catch_1
    move-exception v1

    .line 8
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/huawei/hms/scankit/r;->c:Lcom/huawei/hms/scankit/p/Pc;

    if-nez v0, :cond_2

    return-void

    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/r;->c:Lcom/huawei/hms/scankit/p/Pc;

    if-nez v0, :cond_1

    return-void

    .line 10
    :cond_1
    throw p1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/huawei/hms/scankit/r;->c:Lcom/huawei/hms/scankit/p/Pc;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/Pc;->a(Landroid/os/Bundle;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public decodeWithBitmap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/ml/scan/HmsScan;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Ha error"

    const-string v1, "IRemoteDecoderDelegateImpl"

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 2
    invoke-static {p2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/huawei/hms/scankit/r;->b:Lcom/huawei/hms/scankit/p/Kc;

    if-nez v3, :cond_1

    .line 5
    :try_start_0
    new-instance v3, Lcom/huawei/hms/scankit/p/Kc;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "Bitmap"

    :try_start_1
    invoke-direct {v3, v2, v4}, Lcom/huawei/hms/scankit/p/Kc;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/huawei/hms/scankit/r;->b:Lcom/huawei/hms/scankit/p/Kc;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 6
    :catch_0
    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :catch_1
    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/scankit/r;->a(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    return-object p1
.end method

.method public queryDeepLinkInfo(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
