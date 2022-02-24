.class public Lcn/bingoogolapple/qrcode/core/ProcessDataTask;
.super Landroid/os/AsyncTask;
.source "ProcessDataTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/bingoogolapple/qrcode/core/ProcessDataTask$Delegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mData:[B

.field private mDelegate:Lcn/bingoogolapple/qrcode/core/ProcessDataTask$Delegate;

.field private orientation:I


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;[BLcn/bingoogolapple/qrcode/core/ProcessDataTask$Delegate;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mCamera:Landroid/hardware/Camera;

    .line 3
    iput-object p2, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mData:[B

    .line 4
    iput-object p3, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mDelegate:Lcn/bingoogolapple/qrcode/core/ProcessDataTask$Delegate;

    .line 5
    iput p4, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->orientation:I

    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 10

    .line 2
    iget-object p1, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p1

    .line 4
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    .line 5
    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    .line 6
    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mData:[B

    .line 7
    iget v2, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->orientation:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 8
    array-length v1, v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_0

    mul-int v6, v5, p1

    add-int/2addr v6, p1

    sub-int/2addr v6, v2

    sub-int/2addr v6, v4

    .line 9
    iget-object v7, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mData:[B

    mul-int v8, v2, v0

    add-int/2addr v8, v5

    aget-byte v7, v7, v8

    aput-byte v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v9, v0

    move v0, p1

    move p1, v9

    :cond_2
    const/4 v2, 0x0

    .line 10
    :try_start_0
    iget-object v5, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mDelegate:Lcn/bingoogolapple/qrcode/core/ProcessDataTask$Delegate;

    if-nez v5, :cond_3

    return-object v2

    .line 11
    :cond_3
    iget-object v5, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mDelegate:Lcn/bingoogolapple/qrcode/core/ProcessDataTask$Delegate;

    invoke-interface {v5, v1, v0, p1, v3}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask$Delegate;->processData([BIIZ)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 12
    :catch_0
    :try_start_1
    iget-object v3, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mDelegate:Lcn/bingoogolapple/qrcode/core/ProcessDataTask$Delegate;

    invoke-interface {v3, v1, v0, p1, v4}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask$Delegate;->processData([BIIZ)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    return-object v2
.end method

.method protected onCancelled()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mDelegate:Lcn/bingoogolapple/qrcode/core/ProcessDataTask$Delegate;

    return-void
.end method

.method public perform()Lcn/bingoogolapple/qrcode/core/ProcessDataTask;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 2
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Void;

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-object p0
.end method
