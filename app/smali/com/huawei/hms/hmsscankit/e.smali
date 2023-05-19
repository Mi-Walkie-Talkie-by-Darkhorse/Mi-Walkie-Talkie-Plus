.class Lcom/huawei/hms/hmsscankit/e;
.super Lcom/huawei/hms/hmsscankit/api/IOnResultCallback$Stub;
.source "OnResultCallbackDelegate.java"


# instance fields
.field private final a:Lcom/huawei/hms/hmsscankit/OnResultCallback;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/huawei/hms/hmsscankit/OnResultCallback;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/hmsscankit/api/IOnResultCallback$Stub;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hms/hmsscankit/e;->c:Z

    .line 3
    iput-object p1, p0, Lcom/huawei/hms/hmsscankit/e;->a:Lcom/huawei/hms/hmsscankit/OnResultCallback;

    .line 4
    iput-boolean p2, p0, Lcom/huawei/hms/hmsscankit/e;->c:Z

    return-void
.end method


# virtual methods
.method public onResult([Lcom/huawei/hms/ml/scan/HmsScan;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result callback sdk continueScan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/huawei/hms/hmsscankit/e;->c:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OnResultCallbackDelegat"

    invoke-static {v2, v0}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/huawei/hms/hmsscankit/e;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/e;->a:Lcom/huawei/hms/hmsscankit/OnResultCallback;

    invoke-interface {v0, p1}, Lcom/huawei/hms/hmsscankit/OnResultCallback;->onResult([Lcom/huawei/hms/ml/scan/HmsScan;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object v3, p1, v0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/huawei/hms/hmsscankit/e;->b:Ljava/lang/String;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/huawei/hms/ml/scan/HmsScanBase;->getOriginalValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScanBase;->getOriginalValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/hmsscankit/e;->b:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/huawei/hms/hmsscankit/e;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/huawei/hms/hmsscankit/e;->a:Lcom/huawei/hms/hmsscankit/OnResultCallback;

    invoke-interface {v0, p1}, Lcom/huawei/hms/hmsscankit/OnResultCallback;->onResult([Lcom/huawei/hms/ml/scan/HmsScan;)V

    :cond_1
    :goto_0
    return-void
.end method
