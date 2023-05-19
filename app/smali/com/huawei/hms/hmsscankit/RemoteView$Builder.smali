.class public Lcom/huawei/hms/hmsscankit/RemoteView$Builder;
.super Ljava/lang/Object;
.source "RemoteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/hmsscankit/RemoteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mContext:Landroid/app/Activity;

.field mContinuouslyScan:Z

.field mFormat:Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

.field mIsCustomed:Z

.field mRect:Landroid/graphics/Rect;

.field mReturnedBitmap:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->mIsCustomed:Z

    .line 3
    iput-boolean v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->mContinuouslyScan:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->mReturnedBitmap:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/huawei/hms/hmsscankit/RemoteView;
    .locals 5

    .line 1
    new-instance v0, Lcom/huawei/hms/hmsscankit/RemoteView;

    iget-object v1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->mContext:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->mIsCustomed:Z

    iget-object v3, p0, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->mFormat:Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget v3, v3, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;->mode:I

    :goto_0
    iget-object v4, p0, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->mRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huawei/hms/hmsscankit/RemoteView;-><init>(Landroid/app/Activity;ZILandroid/graphics/Rect;)V

    iget-boolean v1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->mContinuouslyScan:Z

    invoke-virtual {v0, v1}, Lcom/huawei/hms/hmsscankit/RemoteView;->setContinuouslyScan(Z)Lcom/huawei/hms/hmsscankit/RemoteView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->mReturnedBitmap:Z

    invoke-virtual {v0, v1}, Lcom/huawei/hms/hmsscankit/RemoteView;->enableReturnBitmap(Z)Lcom/huawei/hms/hmsscankit/RemoteView;

    move-result-object v0

    return-object v0
.end method

.method public enableReturnBitmap()Lcom/huawei/hms/hmsscankit/RemoteView$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->mReturnedBitmap:Z

    return-object p0
.end method

.method public setBoundingBox(Landroid/graphics/Rect;)Lcom/huawei/hms/hmsscankit/RemoteView$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->mRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setContext(Landroid/app/Activity;)Lcom/huawei/hms/hmsscankit/RemoteView$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method public setContinuouslyScan(Z)Lcom/huawei/hms/hmsscankit/RemoteView$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->mContinuouslyScan:Z

    return-object p0
.end method

.method public varargs setFormat(I[I)Lcom/huawei/hms/hmsscankit/RemoteView$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;

    invoke-direct {v0}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;->setHmsScanTypes(I[I)Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions$Creator;->create()Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->mFormat:Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;

    return-object p0
.end method
