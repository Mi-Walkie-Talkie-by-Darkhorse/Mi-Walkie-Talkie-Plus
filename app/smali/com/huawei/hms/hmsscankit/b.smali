.class Lcom/huawei/hms/hmsscankit/b;
.super Ljava/lang/Object;
.source "HmsRemoteDecoder.java"


# static fields
.field private static volatile a:Lcom/huawei/hms/hmsscankit/api/IRemoteHmsDecoderDelegate;


# direct methods
.method static a(Landroid/content/Context;Lcom/huawei/hms/mlsdk/common/MLFrame;Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;)[Lcom/huawei/hms/ml/scan/HmsScan;
    .locals 6

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huawei/hms/ml/scan/HmsScan;

    .line 1
    sget-object v1, Lcom/huawei/hms/hmsscankit/b;->a:Lcom/huawei/hms/hmsscankit/api/IRemoteHmsDecoderDelegate;

    const-string v2, "RemoteException"

    const-string v3, "exception"

    if-nez v1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/huawei/hms/hmsscankit/j;->b(Landroid/content/Context;)Lcom/huawei/hms/hmsscankit/api/IRemoteCreator;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/huawei/hms/hmsscankit/api/IRemoteCreator;->newRemoteHmsDecoderDelegate()Lcom/huawei/hms/hmsscankit/api/IRemoteHmsDecoderDelegate;

    move-result-object v1

    sput-object v1, Lcom/huawei/hms/hmsscankit/b;->a:Lcom/huawei/hms/hmsscankit/api/IRemoteHmsDecoderDelegate;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-static {v3, v2}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    :goto_0
    sget-object v1, Lcom/huawei/hms/hmsscankit/b;->a:Lcom/huawei/hms/hmsscankit/api/IRemoteHmsDecoderDelegate;

    if-eqz v1, :cond_5

    .line 6
    :try_start_1
    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame;->acquireProperty()Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    new-instance v1, Lcom/huawei/hms/hmsscankit/DetailRect;

    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame;->acquireProperty()Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame;->acquireProperty()Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getHeight()I

    move-result v5

    invoke-direct {v1, v4, v5}, Lcom/huawei/hms/hmsscankit/DetailRect;-><init>(II)V

    goto :goto_1

    .line 8
    :cond_2
    new-instance v1, Lcom/huawei/hms/hmsscankit/DetailRect;

    invoke-direct {v1}, Lcom/huawei/hms/hmsscankit/DetailRect;-><init>()V

    .line 9
    :goto_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_3

    .line 10
    iget p2, p2, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;->mode:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p2, :cond_3

    const-string v5, "FormatValue"

    .line 11
    :try_start_2
    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    const-string p2, "TransType"

    const/4 v5, 0x3

    .line 12
    :try_start_3
    invoke-virtual {v4, p2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    invoke-static {p0}, Lcom/huawei/hms/scankit/p/Rc;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame;->readBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 15
    sget-object p0, Lcom/huawei/hms/hmsscankit/b;->a:Lcom/huawei/hms/hmsscankit/api/IRemoteHmsDecoderDelegate;

    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame;->readBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {v4}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p0, v1, p1, p2}, Lcom/huawei/hms/hmsscankit/api/IRemoteHmsDecoderDelegate;->decodeInBitmap(Lcom/huawei/hms/hmsscankit/DetailRect;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p0

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame;->acquireGrayByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p0

    .line 18
    sget-object p1, Lcom/huawei/hms/hmsscankit/b;->a:Lcom/huawei/hms/hmsscankit/api/IRemoteHmsDecoderDelegate;

    invoke-static {v4}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, v1, p0, p2}, Lcom/huawei/hms/hmsscankit/api/IRemoteHmsDecoderDelegate;->detectWithByteBuffer(Lcom/huawei/hms/hmsscankit/DetailRect;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    if-eqz p0, :cond_5

    return-object p0

    .line 19
    :catch_1
    invoke-static {v3, v2}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method
