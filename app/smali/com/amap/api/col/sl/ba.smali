.class public Lcom/amap/api/col/sl/ba;
.super Ljava/lang/Object;
.source "BusStationSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IBusStationSearch;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

.field private c:Lcom/amap/api/services/busline/BusStationQuery;

.field private d:Lcom/amap/api/services/busline/BusStationQuery;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/busline/BusStationResult;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/busline/BusStationQuery;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/ba;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/ba;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/sl/ba;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-static {}, Lcom/amap/api/col/sl/ac;->a()Lcom/amap/api/col/sl/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/ba;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/sl/ba;)Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/ba;->b:Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/col/sl/ba;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/ba;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/busline/BusStationQuery;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/ba;->c:Lcom/amap/api/services/busline/BusStationQuery;

    return-object v0
.end method

.method public searchBusStation()Lcom/amap/api/services/busline/BusStationResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/amap/api/col/sl/ba;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/col/sl/aa;->a(Landroid/content/Context;)Lcom/amap/api/col/sl/aa;

    iget-object v3, p0, Lcom/amap/api/col/sl/ba;->c:Lcom/amap/api/services/busline/BusStationQuery;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/amap/api/col/sl/ba;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {v3}, Lcom/amap/api/services/busline/BusStationQuery;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v0

    :goto_0
    if-nez v3, :cond_1

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v2, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v2}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    const-string v1, "BusStationSearch"

    const-string v2, "searchBusStation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/amap/api/col/sl/ba;->c:Lcom/amap/api/services/busline/BusStationQuery;

    iget-object v4, p0, Lcom/amap/api/col/sl/ba;->d:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {v3, v4}, Lcom/amap/api/services/busline/BusStationQuery;->weakEquals(Lcom/amap/api/services/busline/BusStationQuery;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/amap/api/col/sl/ba;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {v3}, Lcom/amap/api/services/busline/BusStationQuery;->clone()Lcom/amap/api/services/busline/BusStationQuery;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/col/sl/ba;->d:Lcom/amap/api/services/busline/BusStationQuery;

    const/4 v3, 0x0

    iput v3, p0, Lcom/amap/api/col/sl/ba;->f:I

    iget-object v3, p0, Lcom/amap/api/col/sl/ba;->e:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/amap/api/col/sl/ba;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget v3, p0, Lcom/amap/api/col/sl/ba;->f:I

    if-nez v3, :cond_5

    new-instance v0, Lcom/amap/api/col/sl/n;

    iget-object v3, p0, Lcom/amap/api/col/sl/ba;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/amap/api/col/sl/ba;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-direct {v0, v3, v4}, Lcom/amap/api/col/sl/n;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amap/api/col/sl/n;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusStationResult;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusStationResult;->getPageCount()I

    move-result v3

    iput v3, p0, Lcom/amap/api/col/sl/ba;->f:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/amap/api/col/sl/ba;->e:Ljava/util/ArrayList;

    :goto_1
    iget v3, p0, Lcom/amap/api/col/sl/ba;->f:I

    if-gt v2, v3, :cond_3

    iget-object v3, p0, Lcom/amap/api/col/sl/ba;->e:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/amap/api/col/sl/ba;->f:I

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/sl/ba;->e:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/amap/api/col/sl/ba;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {v3}, Lcom/amap/api/services/busline/BusStationQuery;->getPageNumber()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-object v0

    :cond_5
    iget-object v3, p0, Lcom/amap/api/col/sl/ba;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {v3}, Lcom/amap/api/services/busline/BusStationQuery;->getPageNumber()I

    move-result v3

    iget v4, p0, Lcom/amap/api/col/sl/ba;->f:I

    if-gt v3, v4, :cond_6

    if-ltz v3, :cond_6

    :goto_3
    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "page out of range"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    const-string v2, "BusStationSearch"

    const-string v3, "searchBusStation"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/sl/ba;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusStationResult;

    if-nez v0, :cond_4

    new-instance v0, Lcom/amap/api/col/sl/n;

    iget-object v2, p0, Lcom/amap/api/col/sl/ba;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/sl/ba;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-direct {v0, v2, v3}, Lcom/amap/api/col/sl/n;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amap/api/col/sl/n;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusStationResult;

    iget-object v2, p0, Lcom/amap/api/col/sl/ba;->e:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/amap/api/col/sl/ba;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {v3}, Lcom/amap/api/services/busline/BusStationQuery;->getPageNumber()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method public searchBusStationAsyn()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/as;->a()Lcom/amap/api/col/sl/as;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/sl/ba$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/sl/ba$1;-><init>(Lcom/amap/api/col/sl/ba;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/as;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setOnBusStationSearchListener(Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/ba;->b:Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

    return-void
.end method

.method public setQuery(Lcom/amap/api/services/busline/BusStationQuery;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/ba;->c:Lcom/amap/api/services/busline/BusStationQuery;

    invoke-virtual {p1, v0}, Lcom/amap/api/services/busline/BusStationQuery;->weakEquals(Lcom/amap/api/services/busline/BusStationQuery;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/amap/api/col/sl/ba;->c:Lcom/amap/api/services/busline/BusStationQuery;

    :cond_0
    return-void
.end method
