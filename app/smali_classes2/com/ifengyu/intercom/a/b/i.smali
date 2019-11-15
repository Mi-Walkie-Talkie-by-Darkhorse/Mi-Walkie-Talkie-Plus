.class public abstract Lcom/ifengyu/intercom/a/b/i;
.super Lcom/ifengyu/intercom/a/b/b;
.source "SplashCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/a/b/b",
        "<",
        "Lcom/ifengyu/intercom/bean/AdModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Response;I)Lcom/ifengyu/intercom/bean/AdModel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/ifengyu/intercom/bean/SplashResult;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/SplashResult;

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "adcache"

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/a;->a(Ljava/io/File;)Lcom/ifengyu/intercom/b/a;

    move-result-object v1

    iget v2, v0, Lcom/ifengyu/intercom/bean/SplashResult;->count:I

    if-lez v2, :cond_8

    iget-object v0, v0, Lcom/ifengyu/intercom/bean/SplashResult;->results:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/AdModel;

    iget-boolean v2, v0, Lcom/ifengyu/intercom/bean/AdModel;->isPublish:Z

    if-nez v2, :cond_1

    const-string v2, "admodel"

    invoke-virtual {v1, v2, v0}, Lcom/ifengyu/intercom/b/a;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "admodel"

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/b/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/bean/AdModel;

    if-nez v1, :cond_2

    iput-boolean v6, v0, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    goto :goto_0

    :cond_2
    iget v2, v1, Lcom/ifengyu/intercom/bean/AdModel;->id:I

    iget v3, v0, Lcom/ifengyu/intercom/bean/AdModel;->id:I

    if-eq v2, v3, :cond_3

    iput-boolean v6, v0, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/ifengyu/intercom/bean/AdModel;->getUpdateTime()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/ifengyu/intercom/bean/AdModel;->getUpdateTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    iput-boolean v6, v0, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    goto :goto_0

    :cond_4
    iget-object v2, v1, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput-boolean v6, v0, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    iput-boolean v6, v0, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    goto :goto_0

    :cond_6
    iget-object v3, v1, Lcom/ifengyu/intercom/bean/AdModel;->md5:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    iput-boolean v6, v0, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    goto :goto_0

    :cond_7
    iget-object v1, v1, Lcom/ifengyu/intercom/bean/AdModel;->md5:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/b/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v6, v0, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    goto :goto_0

    :cond_8
    const-string v0, "admodel"

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/b/a;->c(Ljava/lang/String;)Z

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b(Lokhttp3/Response;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/a/b/i;->a(Lokhttp3/Response;I)Lcom/ifengyu/intercom/bean/AdModel;

    move-result-object v0

    return-object v0
.end method
