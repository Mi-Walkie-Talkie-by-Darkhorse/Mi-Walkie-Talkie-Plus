.class public Lcom/shanlitech/et/web/tob/api/model/VideoReporter;
.super Ljava/lang/Object;
.source "VideoReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;
    }
.end annotation


# instance fields
.field private heartbeat:I

.field private isAutoAnswer:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isAuto"
    .end annotation
.end field

.field private reportURL:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field private videoAccount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "account"
    .end annotation
.end field

.field private videoID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "devId"
    .end annotation
.end field

.field private videoIP:Ljava/lang/String;

.field private videoPassword:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "password"
    .end annotation
.end field

.field private videoPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;->build()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    .line 2
    iput v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->heartbeat:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->videoIP:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->videoPort:I

    return-void
.end method

.method private splitAccount()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->getVideoID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;->getAccount(Ljava/lang/String;)Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;->account:Ljava/lang/String;

    iput-object v1, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->videoAccount:Ljava/lang/String;

    .line 3
    iget-object v0, v0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;->password:Ljava/lang/String;

    iput-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->videoPassword:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private splitURL()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->reportURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->reportURL:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->reportURL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->videoIP:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->videoPort:I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->reportURL:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7
    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 8
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->videoIP:Ljava/lang/String;

    const/4 v1, 0x1

    .line 9
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->videoPort:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getHeartbeat()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->heartbeat:I

    return v0
.end method

.method public getReportURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->reportURL:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->videoAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->splitAccount()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->videoAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->videoID:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoIP()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->videoIP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->splitURL()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->videoIP:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->videoPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->splitAccount()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->videoPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoPort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->videoPort:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->splitURL()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->videoPort:I

    return v0
.end method

.method public isAutoAnswer()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->isAutoAnswer:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    const-string v0, ", heartbeat="

    const-string v1, ", videoPassword=\'"

    const-string v2, ", videoAccount=\'"

    const-string v3, ", reportURL=\'"

    const-string v4, ", isAutoAnswer="

    const-string v5, "VideoReporter{videoID=\'"

    const/16 v6, 0x7d

    const/16 v7, 0x27

    .line 1
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->videoID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->isAutoAnswer:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->reportURL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->getVideoAccount()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->getVideoPassword()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->heartbeat:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", videoIP=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->getVideoIP()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v9, ", videoPort="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->getVideoPort()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v8

    .line 6
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->videoID:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->isAutoAnswer:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->reportURL:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->getVideoAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->getVideoPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter;->heartbeat:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
