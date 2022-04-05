.class public abstract Lcom/ifengyu/intercom/g/d/k;
.super Lcom/ifengyu/intercom/g/d/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/g/d/b<",
        "Lcom/ifengyu/intercom/bean/AdModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Response;I)Lcom/ifengyu/intercom/bean/AdModel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

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

    invoke-static {}, Lcom/ifengyu/intercom/i/k0;->a()Landroid/content/Context;

    move-result-object p2

    const-string v0, "adcache"

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/i/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lcom/ifengyu/intercom/i/g;->a(Ljava/io/File;)Lcom/ifengyu/intercom/i/g;

    move-result-object p2

    iget v0, p1, Lcom/ifengyu/intercom/bean/SplashResult;->count:I

    const-string v1, "admodel"

    if-lez v0, :cond_8

    iget-object p1, p1, Lcom/ifengyu/intercom/bean/SplashResult;->results:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/AdModel;

    iget-boolean v0, p1, Lcom/ifengyu/intercom/bean/AdModel;->isPublish:Z

    if-nez v0, :cond_0

    invoke-virtual {p2, v1, p1}, Lcom/ifengyu/intercom/i/g;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p1

    :cond_0
    invoke-virtual {p2, v1}, Lcom/ifengyu/intercom/i/g;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ifengyu/intercom/bean/AdModel;

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iput-boolean v0, p1, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    goto :goto_0

    :cond_1
    iget v1, p2, Lcom/ifengyu/intercom/bean/AdModel;->id:I

    iget v2, p1, Lcom/ifengyu/intercom/bean/AdModel;->id:I

    if-eq v1, v2, :cond_2

    iput-boolean v0, p1, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/ifengyu/intercom/bean/AdModel;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/AdModel;->getUpdateTime()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    iput-boolean v0, p1, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    goto :goto_0

    :cond_3
    iget-object v1, p2, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v0, p1, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/io/File;

    iget-object v2, p2, Lcom/ifengyu/intercom/bean/AdModel;->imagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    iput-boolean v0, p1, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    goto :goto_0

    :cond_5
    iget-object v2, p2, Lcom/ifengyu/intercom/bean/AdModel;->md5:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput-boolean v0, p1, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    goto :goto_0

    :cond_6
    iget-object p2, p2, Lcom/ifengyu/intercom/bean/AdModel;->md5:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/i/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    iput-boolean v0, p1, Lcom/ifengyu/intercom/bean/AdModel;->isGoToDownload:Z

    :cond_7
    :goto_0
    return-object p1

    :cond_8
    invoke-virtual {p2, v1}, Lcom/ifengyu/intercom/i/g;->c(Ljava/lang/String;)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Lokhttp3/Response;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/g/d/k;->a(Lokhttp3/Response;I)Lcom/ifengyu/intercom/bean/AdModel;

    move-result-object p1

    return-object p1
.end method
