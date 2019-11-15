.class public Lcom/amap/api/col/sl/bf;
.super Ljava/lang/Object;
.source "InputtipsSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IInputtipsSearch;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/help/Inputtips$InputtipsListener;

.field private c:Landroid/os/Handler;

.field private d:Lcom/amap/api/services/help/InputtipsQuery;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/bf;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/sl/bf;->b:Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    invoke-static {}, Lcom/amap/api/col/sl/ac;->a()Lcom/amap/api/col/sl/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/bf;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/help/InputtipsQuery;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/bf;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/sl/bf;->d:Lcom/amap/api/services/help/InputtipsQuery;

    invoke-static {}, Lcom/amap/api/col/sl/ac;->a()Lcom/amap/api/col/sl/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/bf;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/sl/bf;)Lcom/amap/api/services/help/Inputtips$InputtipsListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bf;->b:Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/col/sl/bf;Lcom/amap/api/services/help/InputtipsQuery;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amap/api/col/sl/bf;->a(Lcom/amap/api/services/help/InputtipsQuery;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/amap/api/services/help/InputtipsQuery;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/help/InputtipsQuery;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/help/Tip;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/bf;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/aa;->a(Landroid/content/Context;)Lcom/amap/api/col/sl/aa;

    if-nez p1, :cond_0

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Inputtips"

    const-string v2, "requestInputtips"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v0, Lcom/amap/api/services/core/AMapException;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/amap/api/services/core/AMapException;

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/help/InputtipsQuery;->getKeyword()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/services/help/InputtipsQuery;->getKeyword()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/amap/api/col/sl/y;

    iget-object v1, p0, Lcom/amap/api/col/sl/bf;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/col/sl/y;-><init>(Landroid/content/Context;Lcom/amap/api/services/help/InputtipsQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/col/sl/y;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/col/sl/bf;)Lcom/amap/api/services/help/InputtipsQuery;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bf;->d:Lcom/amap/api/services/help/InputtipsQuery;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/col/sl/bf;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bf;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/help/InputtipsQuery;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bf;->d:Lcom/amap/api/services/help/InputtipsQuery;

    return-object v0
.end method

.method public requestInputtips()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/help/Tip;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/sl/bf;->d:Lcom/amap/api/services/help/InputtipsQuery;

    invoke-direct {p0, v0}, Lcom/amap/api/col/sl/bf;->a(Lcom/amap/api/services/help/InputtipsQuery;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public requestInputtips(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/col/sl/bf;->requestInputtips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestInputtips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/amap/api/services/help/InputtipsQuery;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/services/help/InputtipsQuery;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/sl/bf;->d:Lcom/amap/api/services/help/InputtipsQuery;

    iget-object v0, p0, Lcom/amap/api/col/sl/bf;->d:Lcom/amap/api/services/help/InputtipsQuery;

    invoke-virtual {v0, p3}, Lcom/amap/api/services/help/InputtipsQuery;->setType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/col/sl/bf;->requestInputtipsAsyn()V

    return-void
.end method

.method public requestInputtipsAsyn()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/as;->a()Lcom/amap/api/col/sl/as;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/sl/bf$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/sl/bf$1;-><init>(Lcom/amap/api/col/sl/bf;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/as;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Inputtips"

    const-string v2, "requestInputtipsAsynThrowable"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInputtipsListener(Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/bf;->b:Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    return-void
.end method

.method public setQuery(Lcom/amap/api/services/help/InputtipsQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/bf;->d:Lcom/amap/api/services/help/InputtipsQuery;

    return-void
.end method
