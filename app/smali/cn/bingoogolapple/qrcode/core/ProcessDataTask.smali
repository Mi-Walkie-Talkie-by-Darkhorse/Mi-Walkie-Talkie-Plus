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
        "Landroid/os/AsyncTask",
        "<",
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

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mCamera:Landroid/hardware/Camera;

    iput-object p2, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mData:[B

    iput-object p3, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mDelegate:Lcn/bingoogolapple/qrcode/core/ProcessDataTask$Delegate;

    iput p4, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->orientation:I

    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 2

    invoke-virtual {p0}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mData:[B

    iget v4, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->orientation:I

    if-nez v4, :cond_1

    iget-object v1, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mData:[B

    array-length v1, v1

    new-array v1, v1, [B

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_2

    move v4, v5

    :goto_1
    if-ge v4, v2, :cond_0

    mul-int v7, v4, v3

    add-int/2addr v7, v3

    sub-int/2addr v7, v6

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mData:[B

    mul-int v9, v6, v2

    add-int/2addr v9, v4

    aget-byte v8, v8, v9

    aput-byte v8, v1, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    :cond_1
    move v10, v3

    move v3, v2

    move v2, v10

    :cond_2
    :try_start_0
    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mDelegate:Lcn/bingoogolapple/qrcode/core/ProcessDataTask$Delegate;

    if-nez v4, :cond_3

    :goto_2
    return-object v0

    :cond_3
    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mDelegate:Lcn/bingoogolapple/qrcode/core/ProcessDataTask$Delegate;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v3, v2, v5}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask$Delegate;->processData([BIIZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_1
    iget-object v4, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mDelegate:Lcn/bingoogolapple/qrcode/core/ProcessDataTask$Delegate;

    const/4 v5, 0x1

    invoke-interface {v4, v1, v3, v2, v5}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask$Delegate;->processData([BIIZ)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method protected onCancelled()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->mDelegate:Lcn/bingoogolapple/qrcode/core/ProcessDataTask$Delegate;

    return-void
.end method

.method public perform()Lcn/bingoogolapple/qrcode/core/ProcessDataTask;
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-object p0

    :cond_0
    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcn/bingoogolapple/qrcode/core/ProcessDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
