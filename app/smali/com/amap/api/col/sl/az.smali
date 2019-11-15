.class public Lcom/amap/api/col/sl/az;
.super Ljava/lang/Object;
.source "BusLineSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IBusLineSearch;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

.field private c:Lcom/amap/api/services/busline/BusLineQuery;

.field private d:Lcom/amap/api/services/busline/BusLineQuery;

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/busline/BusLineResult;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/busline/BusLineQuery;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/sl/az;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/sl/az;->g:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/az;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/sl/az;->c:Lcom/amap/api/services/busline/BusLineQuery;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/amap/api/services/busline/BusLineQuery;->clone()Lcom/amap/api/services/busline/BusLineQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/az;->d:Lcom/amap/api/services/busline/BusLineQuery;

    :cond_0
    invoke-static {}, Lcom/amap/api/col/sl/ac;->a()Lcom/amap/api/col/sl/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/az;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/sl/az;)Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/az;->b:Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

    return-object v0
.end method

.method private a(I)Z
    .locals 1

    iget v0, p0, Lcom/amap/api/col/sl/az;->e:I

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/col/sl/az;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/az;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/busline/BusLineQuery;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/az;->c:Lcom/amap/api/services/busline/BusLineQuery;

    return-object v0
.end method

.method public searchBusLine()Lcom/amap/api/services/busline/BusLineResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/az;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/aa;->a(Landroid/content/Context;)Lcom/amap/api/col/sl/aa;

    iget-object v0, p0, Lcom/amap/api/col/sl/az;->d:Lcom/amap/api/services/busline/BusLineQuery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/az;->c:Lcom/amap/api/services/busline/BusLineQuery;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/az;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineQuery;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "BusLineSearch"

    const-string v2, "searchBusLine"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/services/core/AMapException;

    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/az;->c:Lcom/amap/api/services/busline/BusLineQuery;

    iget-object v2, p0, Lcom/amap/api/col/sl/az;->d:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0, v2}, Lcom/amap/api/services/busline/BusLineQuery;->weakEquals(Lcom/amap/api/services/busline/BusLineQuery;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/az;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineQuery;->clone()Lcom/amap/api/services/busline/BusLineQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/az;->d:Lcom/amap/api/services/busline/BusLineQuery;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/sl/az;->e:I

    iget-object v0, p0, Lcom/amap/api/col/sl/az;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/sl/az;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    iget v0, p0, Lcom/amap/api/col/sl/az;->e:I

    if-nez v0, :cond_6

    new-instance v0, Lcom/amap/api/col/sl/n;

    iget-object v2, p0, Lcom/amap/api/col/sl/az;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/sl/az;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v3}, Lcom/amap/api/services/busline/BusLineQuery;->clone()Lcom/amap/api/services/busline/BusLineQuery;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/amap/api/col/sl/n;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amap/api/col/sl/n;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusLineResult;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/sl/az;->f:Ljava/util/ArrayList;

    :goto_1
    iget v2, p0, Lcom/amap/api/col/sl/az;->e:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/sl/az;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/amap/api/col/sl/az;->e:I

    if-ltz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/sl/az;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/busline/BusLineQuery;->getPageNumber()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/amap/api/col/sl/az;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/amap/api/col/sl/az;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amap/api/col/sl/az;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/busline/BusLineQuery;->getPageNumber()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/sl/az;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusLineQuery;->getPageNumber()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/sl/az;->a(I)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "page out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v1, p0, Lcom/amap/api/col/sl/az;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusLineResult;

    if-nez v0, :cond_5

    new-instance v0, Lcom/amap/api/col/sl/n;

    iget-object v1, p0, Lcom/amap/api/col/sl/az;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/sl/az;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/sl/n;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amap/api/col/sl/n;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusLineResult;

    iget-object v1, p0, Lcom/amap/api/col/sl/az;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amap/api/col/sl/az;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/busline/BusLineQuery;->getPageNumber()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public searchBusLineAsyn()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/as;->a()Lcom/amap/api/col/sl/as;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/sl/az$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/sl/az$1;-><init>(Lcom/amap/api/col/sl/az;)V

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

.method public setOnBusLineSearchListener(Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/az;->b:Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

    return-void
.end method

.method public setQuery(Lcom/amap/api/services/busline/BusLineQuery;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/az;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {v0, p1}, Lcom/amap/api/services/busline/BusLineQuery;->weakEquals(Lcom/amap/api/services/busline/BusLineQuery;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/amap/api/col/sl/az;->c:Lcom/amap/api/services/busline/BusLineQuery;

    invoke-virtual {p1}, Lcom/amap/api/services/busline/BusLineQuery;->clone()Lcom/amap/api/services/busline/BusLineQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/az;->d:Lcom/amap/api/services/busline/BusLineQuery;

    :cond_0
    return-void
.end method
