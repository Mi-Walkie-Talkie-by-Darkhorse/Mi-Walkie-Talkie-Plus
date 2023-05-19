.class public abstract Lcom/ifengyu/intercom/o/c/d;
.super Lcom/ifengyu/intercom/o/c/a;
.source "SplashCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/o/c/a<",
        "Lcom/ifengyu/intercom/bean/AdModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/o/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic f(Lokhttp3/Response;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/o/c/d;->h(Lokhttp3/Response;I)Lcom/ifengyu/intercom/bean/AdModel;

    move-result-object p1

    return-object p1
.end method

.method public h(Lokhttp3/Response;I)Lcom/ifengyu/intercom/bean/AdModel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/ifengyu/intercom/bean/SplashResult;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/SplashResult;

    .line 2
    invoke-static {}, Lcom/ifengyu/library/utils/s;->e()Landroid/content/Context;

    move-result-object p2

    const-string v0, "adcache"

    invoke-static {p2, v0}, Lcom/ifengyu/library/utils/j;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lcom/ifengyu/intercom/p/k;->b(Ljava/io/File;)Lcom/ifengyu/intercom/p/k;

    move-result-object p2

    .line 3
    iget v0, p1, Lcom/ifengyu/intercom/bean/SplashResult;->count:I

    const-string v1, "admodel"

    if-lez v0, :cond_8

    .line 4
    iget-object p1, p1, Lcom/ifengyu/intercom/bean/SplashResult;->results:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/AdModel;

    .line 6
    iget-boolean v0, p1, Lcom/ifengyu/intercom/bean/AdModel;->isPublish:Z

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p2, v1, p1}, Lcom/ifengyu/intercom/p/k;->g(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p2, v1}, Lcom/ifengyu/intercom/p/k;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ifengyu/intercom/bean/AdModel;

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 9
    iput-boolean v0, p1, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    goto :goto_0

    .line 10
    :cond_1
    iget v1, p2, Lcom/ifengyu/intercom/bean/AdModel;->id:I

    iget v2, p1, Lcom/ifengyu/intercom/bean/AdModel;->id:I

    if-eq v1, v2, :cond_2

    .line 11
    iput-boolean v0, p1, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p2}, Lcom/ifengyu/intercom/bean/AdModel;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/AdModel;->getUpdateTime()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 13
    iput-boolean v0, p1, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    goto :goto_0

    .line 14
    :cond_3
    iget-object v1, p2, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    iput-boolean v0, p1, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    goto :goto_0

    .line 16
    :cond_4
    new-instance v1, Ljava/io/File;

    iget-object v2, p2, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 18
    iput-boolean v0, p1, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    goto :goto_0

    .line 19
    :cond_5
    iget-object v2, p2, Lcom/ifengyu/intercom/bean/AdModel;->md5:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 20
    iput-boolean v0, p1, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    goto :goto_0

    .line 21
    :cond_6
    iget-object p2, p2, Lcom/ifengyu/intercom/bean/AdModel;->md5:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/p/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 22
    iput-boolean v0, p1, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    :cond_7
    :goto_0
    return-object p1

    .line 23
    :cond_8
    invoke-virtual {p2, v1}, Lcom/ifengyu/intercom/p/k;->k(Ljava/lang/String;)Z

    const/4 p1, 0x0

    return-object p1
.end method
