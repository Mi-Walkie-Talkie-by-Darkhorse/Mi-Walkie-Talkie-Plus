.class final Lcom/huawei/hms/scankit/j;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/scankit/j$a;
    }
.end annotation


# static fields
.field private static a:J


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/huawei/hms/scankit/p/Aa;

.field private final d:Lcom/huawei/hms/scankit/a;

.field private e:Z

.field private f:I

.field private g:Lcom/huawei/hms/scankit/j$a;

.field private h:Landroid/graphics/Rect;

.field private i:I

.field private j:Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate;

.field private k:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/huawei/hms/scankit/p/Aa;Lcom/huawei/hms/scankit/a;Ljava/util/Map;Landroid/graphics/Rect;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/huawei/hms/scankit/p/Aa;",
            "Lcom/huawei/hms/scankit/a;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/graphics/Rect;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p4, 0x1

    .line 2
    iput-boolean p4, p0, Lcom/huawei/hms/scankit/j;->e:Z

    const/16 p4, 0x32

    .line 3
    iput p4, p0, Lcom/huawei/hms/scankit/j;->f:I

    const/4 p4, 0x0

    .line 4
    iput-boolean p4, p0, Lcom/huawei/hms/scankit/j;->k:Z

    .line 5
    iput-object p1, p0, Lcom/huawei/hms/scankit/j;->b:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/huawei/hms/scankit/j;->c:Lcom/huawei/hms/scankit/p/Aa;

    .line 7
    iput-object p3, p0, Lcom/huawei/hms/scankit/j;->d:Lcom/huawei/hms/scankit/a;

    .line 8
    iput-object p5, p0, Lcom/huawei/hms/scankit/j;->h:Landroid/graphics/Rect;

    .line 9
    iget-object p2, p0, Lcom/huawei/hms/scankit/j;->g:Lcom/huawei/hms/scankit/j$a;

    if-nez p2, :cond_0

    .line 10
    new-instance p2, Lcom/huawei/hms/scankit/j$a;

    invoke-direct {p2, p0}, Lcom/huawei/hms/scankit/j$a;-><init>(Lcom/huawei/hms/scankit/j;)V

    iput-object p2, p0, Lcom/huawei/hms/scankit/j;->g:Lcom/huawei/hms/scankit/j$a;

    .line 11
    sget-object p3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p5, p4, [Ljava/lang/Object;

    invoke-virtual {p2, p3, p5}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    :cond_0
    iput p4, p0, Lcom/huawei/hms/scankit/j;->i:I

    .line 13
    iput-boolean p6, p0, Lcom/huawei/hms/scankit/j;->k:Z

    .line 14
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/j;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ScankitDecode"

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcom/huawei/hms/scankit/j;->k:Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    const-string p1, "use local decoder"

    .line 2
    :try_start_1
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    const-class p1, Lcom/huawei/hms/scankit/DecoderCreator;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_0
    const-string v1, "use remote decoder"

    .line 4
    :try_start_2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5
    :try_start_3
    invoke-static {p1}, Lcom/huawei/hms/hmsscankit/j;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 6
    :catch_0
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_1

    const-string v2, "com.huawei.hms.scankit.DecoderCreator"

    .line 7
    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_1

    const-string v2, "com.huawei.hms.scankit.aiscan.common.BarcodeFormat"

    :try_start_6
    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    const-string p1, "InstantiationException"

    .line 10
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    const-string p1, "ClassNotFoundException"

    .line 11
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    const-string p1, "IllegalAccessException"

    .line 12
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 13
    :goto_1
    :try_start_7
    instance-of v1, p1, Landroid/os/IBinder;

    if-eqz v1, :cond_1

    .line 14
    check-cast p1, Landroid/os/IBinder;

    .line 15
    invoke-static {p1}, Lcom/huawei/hms/hmsscankit/api/IRemoteDecoderCreator$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/hmsscankit/api/IRemoteDecoderCreator;

    move-result-object p1

    .line 16
    invoke-interface {p1}, Lcom/huawei/hms/hmsscankit/api/IRemoteDecoderCreator;->newRemoteFrameDecoderDelegate()Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/j;->j:Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate;

    return-void

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/scankit/j;->j:Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate;

    if-nez p1, :cond_2

    .line 18
    invoke-static {}, Lcom/huawei/hms/scankit/s;->a()Lcom/huawei/hms/scankit/s;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/scankit/j;->j:Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    :catch_4
    const-string p1, "RemoteException"

    .line 19
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private static a([BIILandroid/os/Bundle;)V
    .locals 7

    if-eqz p0, :cond_1

    .line 69
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v3, 0x11

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 71
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 73
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string p2, "barcode_bitmap"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/high16 p1, 0x3f800000    # 1.0f

    const-string p2, "barcode_scaled_factor"

    .line 74
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 75
    :try_start_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ScankitDecode"

    const-string p1, "RemoteException"

    .line 76
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private a([BZ)V
    .locals 13

    const-string v0, "ScankitDecode"

    .line 20
    iget-object v1, p0, Lcom/huawei/hms/scankit/j;->c:Lcom/huawei/hms/scankit/p/Aa;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Aa;->e()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 21
    iget-object v2, p0, Lcom/huawei/hms/scankit/j;->c:Lcom/huawei/hms/scankit/p/Aa;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/Aa;->e()Landroid/graphics/Point;

    move-result-object v2

    iget v9, v2, Landroid/graphics/Point;->y:I

    .line 22
    iget-object v2, p0, Lcom/huawei/hms/scankit/j;->b:Landroid/content/Context;

    const/4 v10, 0x0

    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 23
    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    move v6, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 24
    :goto_0
    iget-object v2, p0, Lcom/huawei/hms/scankit/j;->d:Lcom/huawei/hms/scankit/a;

    if-eqz v2, :cond_7

    .line 25
    sget-object v2, Lcom/huawei/hms/scankit/e;->b:Lcom/huawei/hms/scankit/p/Kc;

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    .line 26
    sget-object v2, Lcom/huawei/hms/scankit/e;->b:Lcom/huawei/hms/scankit/p/Kc;

    mul-int v3, v1, v9

    invoke-virtual {v2, v10, v3}, Lcom/huawei/hms/scankit/p/Kc;->a(ZI)Lcom/huawei/hms/scankit/p/Kc$a;

    move-result-object v2

    move-object v12, v2

    goto :goto_1

    :cond_1
    move-object v12, v11

    .line 27
    :goto_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 28
    iget-object v3, p0, Lcom/huawei/hms/scankit/j;->h:Landroid/graphics/Rect;

    const-string v4, "Rect"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    iget-object v3, p0, Lcom/huawei/hms/scankit/j;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/hms/scankit/util/c;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "Screen"

    .line 30
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 31
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/huawei/hms/scankit/j;->j:Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate;

    iget-object v4, p0, Lcom/huawei/hms/scankit/j;->d:Lcom/huawei/hms/scankit/a;

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/a;->b()I

    move-result v7

    invoke-static {v2}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    move-result-object v8

    move-object v2, v3

    move-object v3, p1

    move v4, v1

    move v5, v9

    invoke-interface/range {v2 .. v8}, Lcom/huawei/hms/hmsscankit/api/IRemoteFrameDecoderDelegate;->decode([BIIIILcom/huawei/hms/feature/dynamic/IObjectWrapper;)[Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    goto :goto_2

    :catch_0
    const-string v2, "RemoteException"

    .line 32
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v11

    :goto_2
    if-eqz v3, :cond_6

    .line 33
    array-length v2, v3

    if-lez v2, :cond_6

    aget-object v2, v3, v10

    if-eqz v2, :cond_6

    .line 34
    iget-object v2, p0, Lcom/huawei/hms/scankit/j;->d:Lcom/huawei/hms/scankit/a;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/a;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    aget-object v2, v3, v10

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/x;->j()F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/huawei/hms/scankit/j;->a:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "need to zoom"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v3, v10

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/x;->j()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    aget-object v2, v3, v10

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/x;->j()F

    move-result v2

    invoke-direct {p0, v2, v3, v12}, Lcom/huawei/hms/scankit/j;->a(F[Lcom/huawei/hms/scankit/aiscan/common/x;Lcom/huawei/hms/scankit/p/Kc$a;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/huawei/hms/scankit/j;->a:J

    return-void

    .line 38
    :cond_3
    aget-object v2, v3, v10

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 39
    aget-object v2, v3, v10

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/x;->k()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScanCode need to globalexposure"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v3, v10

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/x;->f()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/huawei/hms/scankit/j;->g:Lcom/huawei/hms/scankit/j$a;

    aget-object v0, v3, v10

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0, v1, v9, v10}, Lcom/huawei/hms/scankit/j$a;->a(Ljava/util/List;IIZ)V

    .line 42
    iget-object p2, p0, Lcom/huawei/hms/scankit/j;->g:Lcom/huawei/hms/scankit/j$a;

    aget-object v0, v3, v10

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->f()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/huawei/hms/scankit/j$a;->b(I)V

    goto :goto_3

    .line 43
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScanCode need to exposure"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v3, v10

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/aiscan/common/x;->d()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/huawei/hms/scankit/j;->g:Lcom/huawei/hms/scankit/j$a;

    aget-object v2, v3, v10

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/x;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/huawei/hms/scankit/j$a;->a(I)V

    .line 45
    iget-object v0, p0, Lcom/huawei/hms/scankit/j;->g:Lcom/huawei/hms/scankit/j$a;

    aget-object v2, v3, v10

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/x;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v9, p2}, Lcom/huawei/hms/scankit/j$a;->b(Ljava/util/List;IIZ)V

    :cond_5
    :goto_3
    move-object v2, p0

    move-object v4, p1

    move v5, v1

    move v6, v9

    move-object v7, v12

    .line 46
    invoke-direct/range {v2 .. v7}, Lcom/huawei/hms/scankit/j;->a([Lcom/huawei/hms/scankit/aiscan/common/x;[BIILcom/huawei/hms/scankit/p/Kc$a;)V

    goto :goto_4

    .line 47
    :cond_6
    iget-object p1, p0, Lcom/huawei/hms/scankit/j;->d:Lcom/huawei/hms/scankit/a;

    sget p2, Lcom/huawei/hms/scankit/R$id;->scankit_decode_failed:I

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 48
    sget-object p1, Lcom/huawei/hms/scankit/e;->b:Lcom/huawei/hms/scankit/p/Kc;

    if-eqz p1, :cond_7

    .line 49
    sget-object p1, Lcom/huawei/hms/scankit/e;->b:Lcom/huawei/hms/scankit/p/Kc;

    invoke-virtual {p1, v11, v12}, Lcom/huawei/hms/scankit/p/Kc;->a([Lcom/huawei/hms/ml/scan/HmsScan;Lcom/huawei/hms/scankit/p/Kc$a;)V

    :cond_7
    :goto_4
    return-void
.end method

.method private a([Lcom/huawei/hms/scankit/aiscan/common/x;[BIILcom/huawei/hms/scankit/p/Kc$a;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/huawei/hms/scankit/j;->d:Lcom/huawei/hms/scankit/a;

    if-eqz v0, :cond_2

    .line 59
    invoke-static {p1}, Lcom/huawei/hms/scankit/p/gd;->a([Lcom/huawei/hms/scankit/aiscan/common/x;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/huawei/hms/scankit/j;->d:Lcom/huawei/hms/scankit/a;

    sget v1, Lcom/huawei/hms/scankit/R$id;->scankit_decode_succeeded:I

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-string v1, "ScankitDecode"

    const-string v2, "scankit decode succeed msg"

    .line 61
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v1, Lcom/huawei/hms/scankit/e;->b:Lcom/huawei/hms/scankit/p/Kc;

    if-eqz v1, :cond_0

    .line 63
    sget-object v1, Lcom/huawei/hms/scankit/e;->b:Lcom/huawei/hms/scankit/p/Kc;

    invoke-virtual {v1, p1, p5}, Lcom/huawei/hms/scankit/p/Kc;->a([Lcom/huawei/hms/ml/scan/HmsScan;Lcom/huawei/hms/scankit/p/Kc$a;)V

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/j;->d:Lcom/huawei/hms/scankit/a;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/a;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 65
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 66
    invoke-static {p2, p3, p4, p1}, Lcom/huawei/hms/scankit/j;->a([BIILandroid/os/Bundle;)V

    .line 67
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 68
    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method private a(F[Lcom/huawei/hms/scankit/aiscan/common/x;Lcom/huawei/hms/scankit/p/Kc$a;)Z
    .locals 1

    .line 50
    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/j;->b(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 51
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 52
    sget v0, Lcom/huawei/hms/scankit/R$id;->scankit_decode_succeeded:I

    iput v0, p1, Landroid/os/Message;->what:I

    .line 53
    invoke-static {p2}, Lcom/huawei/hms/scankit/p/gd;->a([Lcom/huawei/hms/scankit/aiscan/common/x;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p2

    .line 54
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/huawei/hms/scankit/e;->b:Lcom/huawei/hms/scankit/p/Kc;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/huawei/hms/scankit/e;->b:Lcom/huawei/hms/scankit/p/Kc;

    invoke-virtual {v0, p2, p3}, Lcom/huawei/hms/scankit/p/Kc;->a([Lcom/huawei/hms/ml/scan/HmsScan;Lcom/huawei/hms/scankit/p/Kc$a;)V

    .line 57
    :cond_0
    iget-object p2, p0, Lcom/huawei/hms/scankit/j;->d:Lcom/huawei/hms/scankit/a;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/j;->b:Landroid/content/Context;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "window"

    .line 2
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v2, v0, Landroid/view/WindowManager;

    if-eqz v2, :cond_2

    .line 4
    check-cast v0, Landroid/view/WindowManager;

    .line 5
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 6
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 8
    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    const-string v0, "ScankitDecode"

    const-string v2, "isScreenPortrait  getSystemService  WINDOW_SERVICE  error!!!"

    .line 9
    invoke-static {v0, v2}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public a(F)I
    .locals 4

    .line 95
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/j;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 96
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    const/4 p1, -0x4

    return p1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/j;->b()F

    move-result v1

    const/4 v2, 0x1

    cmpl-float v1, p1, v1

    if-nez v1, :cond_3

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    return p1

    .line 99
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    .line 100
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v3, v3, p1

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_4

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_4

    return v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, -0x1

    return p1
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/huawei/hms/scankit/j;->c:Lcom/huawei/hms/scankit/p/Aa;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa;->g()Lcom/huawei/hms/scankit/p/Ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Ca;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/Ba$a;",
            ">;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/huawei/hms/scankit/j;->c:Lcom/huawei/hms/scankit/p/Aa;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa;->b()Lcom/huawei/hms/scankit/p/ya;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ya;->b()I

    move-result v1

    .line 79
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ya;->c()I

    move-result v2

    .line 80
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ya;->a()I

    move-result v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    add-int/2addr v0, p1

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ge v0, v2, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 81
    :goto_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/j;->c:Lcom/huawei/hms/scankit/p/Aa;

    invoke-virtual {p1, v1}, Lcom/huawei/hms/scankit/p/Aa;->b(I)V

    .line 82
    iget-object p1, p0, Lcom/huawei/hms/scankit/j;->c:Lcom/huawei/hms/scankit/p/Aa;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Aa;->c()Lcom/huawei/hms/scankit/p/Ba;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Ba;->b()Landroid/graphics/Rect;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Ba;->a()I

    move-result v1

    if-lez v1, :cond_4

    .line 85
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Ba;->a()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 86
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    .line 87
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    const/4 v2, 0x0

    .line 88
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hms/scankit/p/Ba$a;

    iget-object v3, v3, Lcom/huawei/hms/scankit/p/Ba$a;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int v3, p1, v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hms/scankit/p/Ba$a;

    iget-object v4, v4, Lcom/huawei/hms/scankit/p/Ba$a;->a:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int/2addr p1, v4

    mul-int v3, v3, p1

    .line 89
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/scankit/p/Ba$a;

    iget-object p1, p1, Lcom/huawei/hms/scankit/p/Ba$a;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    sub-int p1, v0, p1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hms/scankit/p/Ba$a;

    iget-object v4, v4, Lcom/huawei/hms/scankit/p/Ba$a;->a:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr p1, v0

    add-int/2addr v3, p1

    int-to-float p1, v3

    float-to-double v3, p1

    .line 90
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 91
    iget p1, p0, Lcom/huawei/hms/scankit/j;->f:I

    int-to-double v5, p1

    cmpl-double p1, v3, v5

    if-lez p1, :cond_4

    .line 92
    new-instance p1, Lcom/huawei/hms/scankit/p/Ba$a;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/scankit/p/Ba$a;

    iget-object v0, v0, Lcom/huawei/hms/scankit/p/Ba$a;->a:Landroid/graphics/Rect;

    const/16 v3, 0x3e8

    invoke-direct {p1, v0, v3}, Lcom/huawei/hms/scankit/p/Ba$a;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {p2, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p1, p0, Lcom/huawei/hms/scankit/j;->c:Lcom/huawei/hms/scankit/p/Aa;

    invoke-interface {p2, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/Aa;->a(Ljava/util/List;)V

    goto :goto_1

    .line 94
    :cond_3
    iget-object p1, p0, Lcom/huawei/hms/scankit/j;->c:Lcom/huawei/hms/scankit/p/Aa;

    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/Aa;->a(Ljava/util/List;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public b()F
    .locals 2

    .line 17
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/j;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public b(F)Z
    .locals 8

    const-string v0, "ScankitDecode"

    .line 1
    iget-object v1, p0, Lcom/huawei/hms/scankit/j;->d:Lcom/huawei/hms/scankit/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/j;->c:Lcom/huawei/hms/scankit/p/Aa;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Aa;->g()Lcom/huawei/hms/scankit/p/Ca;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    const-string p1, "Zoom not supported,data is null"

    .line 3
    :try_start_1
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 4
    :cond_1
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Ca;->c()I

    move-result v3

    .line 5
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Ca;->b()I

    move-result v4

    .line 6
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Ca;->a()Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v5, v7

    mul-float v5, v5, p1

    mul-float p1, v5, v7

    float-to-int p1, p1

    .line 8
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le p1, v1, :cond_2

    int-to-float p1, v3

    mul-float p1, p1, v6

    div-float v5, p1, v7

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/huawei/hms/scankit/j;->c:Lcom/huawei/hms/scankit/p/Aa;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Aa;->i()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p0, v5}, Lcom/huawei/hms/scankit/j;->a(F)I

    move-result p1

    if-le p1, v4, :cond_3

    .line 11
    iget-object v1, p0, Lcom/huawei/hms/scankit/j;->c:Lcom/huawei/hms/scankit/p/Aa;

    invoke-virtual {v1, p1}, Lcom/huawei/hms/scankit/p/Aa;->c(I)V

    const/4 p1, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/huawei/hms/scankit/j;->c:Lcom/huawei/hms/scankit/p/Aa;

    invoke-virtual {p1, v4}, Lcom/huawei/hms/scankit/p/Aa;->c(I)V

    const/4 p1, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/j;->c:Lcom/huawei/hms/scankit/p/Aa;

    new-instance v3, Lcom/huawei/hms/scankit/p/Ba$a;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x96

    const/16 v6, -0x96

    invoke-direct {v4, v6, v6, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v5, 0x3e8

    invoke-direct {v3, v4, v5}, Lcom/huawei/hms/scankit/p/Ba$a;-><init>(Landroid/graphics/Rect;I)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huawei/hms/scankit/p/Aa;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, p1

    goto :goto_1

    :cond_4
    const-string p1, "Zoom not supported"

    .line 14
    :try_start_2
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Zoom not supported,Exception happen"

    .line 15
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    const-string p1, "Zoom not supported,RuntimeException happen"

    .line 16
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_5

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/j;->e:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/huawei/hms/scankit/R$id;->scankit_decode:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 3
    iget v0, p0, Lcom/huawei/hms/scankit/j;->i:I

    if-gt v0, v2, :cond_1

    add-int/2addr v0, v2

    .line 4
    iput v0, p0, Lcom/huawei/hms/scankit/j;->i:I

    .line 5
    iget-object p1, p0, Lcom/huawei/hms/scankit/j;->d:Lcom/huawei/hms/scankit/a;

    sget v0, Lcom/huawei/hms/scankit/R$id;->scankit_decode_failed:I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 6
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    .line 8
    check-cast p1, [B

    invoke-direct {p0}, Lcom/huawei/hms/scankit/j;->c()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/huawei/hms/scankit/j;->a([BZ)V

    goto :goto_0

    .line 9
    :cond_2
    sget v1, Lcom/huawei/hms/scankit/R$id;->scankit_quit:I

    if-ne v0, v1, :cond_4

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/j;->e:Z

    .line 11
    iget-object p1, p0, Lcom/huawei/hms/scankit/j;->g:Lcom/huawei/hms/scankit/j$a;

    if-eqz p1, :cond_3

    .line 12
    invoke-static {p1, v2}, Lcom/huawei/hms/scankit/j$a;->a(Lcom/huawei/hms/scankit/j$a;Z)Z

    .line 13
    iget-object p1, p0, Lcom/huawei/hms/scankit/j;->g:Lcom/huawei/hms/scankit/j$a;

    invoke-virtual {p1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 14
    :cond_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 15
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage  message.what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScankitDecode"

    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
