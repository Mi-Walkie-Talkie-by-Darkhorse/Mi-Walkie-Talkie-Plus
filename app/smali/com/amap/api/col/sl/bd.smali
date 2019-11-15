.class public Lcom/amap/api/col/sl/bd;
.super Ljava/lang/Object;
.source "DistrictSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IDistrictSearch;


# static fields
.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amap/api/services/district/DistrictResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/district/DistrictSearchQuery;

.field private c:Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

.field private d:Lcom/amap/api/services/district/DistrictSearchQuery;

.field private e:I

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/bd;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/sl/ac;->a()Lcom/amap/api/col/sl/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/sl/bd;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/sl/bd;)Lcom/amap/api/services/district/DistrictSearchQuery;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bd;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/col/sl/bd;)Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bd;->c:Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/col/sl/bd;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bd;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/district/DistrictSearchQuery;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/bd;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    return-object v0
.end method

.method public searchDistrict()Lcom/amap/api/services/district/DistrictResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Lcom/amap/api/services/district/DistrictResult;

    invoke-direct {v3}, Lcom/amap/api/services/district/DistrictResult;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/sl/bd;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/sl/aa;->a(Landroid/content/Context;)Lcom/amap/api/col/sl/aa;

    iget-object v2, p0, Lcom/amap/api/col/sl/bd;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    if-nez v2, :cond_3

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    new-instance v2, Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-direct {v2}, Lcom/amap/api/services/district/DistrictSearchQuery;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/sl/bd;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/sl/bd;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/district/DistrictSearchQuery;->clone()Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amap/api/services/district/DistrictResult;->setQuery(Lcom/amap/api/services/district/DistrictSearchQuery;)V

    iget-object v2, p0, Lcom/amap/api/col/sl/bd;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    iget-object v3, p0, Lcom/amap/api/col/sl/bd;->d:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/district/DistrictSearchQuery;->weakEquals(Lcom/amap/api/services/district/DistrictSearchQuery;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    iput v2, p0, Lcom/amap/api/col/sl/bd;->e:I

    iget-object v2, p0, Lcom/amap/api/col/sl/bd;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/district/DistrictSearchQuery;->clone()Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/sl/bd;->d:Lcom/amap/api/services/district/DistrictSearchQuery;

    sget-object v2, Lcom/amap/api/col/sl/bd;->f:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/amap/api/col/sl/bd;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_1
    iget v2, p0, Lcom/amap/api/col/sl/bd;->e:I

    if-nez v2, :cond_5

    new-instance v0, Lcom/amap/api/col/sl/v;

    iget-object v1, p0, Lcom/amap/api/col/sl/bd;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/sl/bd;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/district/DistrictSearchQuery;->clone()Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/sl/v;-><init>(Landroid/content/Context;Lcom/amap/api/services/district/DistrictSearchQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/col/sl/v;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/district/DistrictResult;

    if-nez v0, :cond_4

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/amap/api/services/district/DistrictResult;->getPageCount()I

    move-result v1

    iput v1, p0, Lcom/amap/api/col/sl/bd;->e:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/amap/api/col/sl/bd;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amap/api/col/sl/bd;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/amap/api/col/sl/bd;->e:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/amap/api/col/sl/bd;->e:I

    iget-object v2, p0, Lcom/amap/api/col/sl/bd;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/district/DistrictSearchQuery;->getPageNum()I

    move-result v2

    if-le v1, v2, :cond_2

    sget-object v1, Lcom/amap/api/col/sl/bd;->f:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/amap/api/col/sl/bd;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/district/DistrictSearchQuery;->getPageNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "DistrictSearch"

    const-string v2, "searchDistrict"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/sl/bd;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/district/DistrictSearchQuery;->getPageNum()I

    move-result v2

    iget v3, p0, Lcom/amap/api/col/sl/bd;->e:I

    if-ge v2, v3, :cond_6

    if-ltz v2, :cond_6

    :goto_2
    if-nez v0, :cond_7

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/amap/api/col/sl/bd;->f:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/district/DistrictResult;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/col/sl/v;

    iget-object v1, p0, Lcom/amap/api/col/sl/bd;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/sl/bd;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/district/DistrictSearchQuery;->clone()Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/sl/v;-><init>(Landroid/content/Context;Lcom/amap/api/services/district/DistrictSearchQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/col/sl/v;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/district/DistrictResult;

    iget-object v1, p0, Lcom/amap/api/col/sl/bd;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/amap/api/col/sl/bd;->e:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/amap/api/col/sl/bd;->e:I

    iget-object v2, p0, Lcom/amap/api/col/sl/bd;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/district/DistrictSearchQuery;->getPageNum()I

    move-result v2

    if-le v1, v2, :cond_2

    sget-object v1, Lcom/amap/api/col/sl/bd;->f:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/amap/api/col/sl/bd;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-virtual {v2}, Lcom/amap/api/services/district/DistrictSearchQuery;->getPageNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public searchDistrictAnsy()V
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/sl/bd;->searchDistrictAsyn()V

    return-void
.end method

.method public searchDistrictAsyn()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/as;->a()Lcom/amap/api/col/sl/as;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/sl/bd$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/sl/bd$1;-><init>(Lcom/amap/api/col/sl/bd;)V

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

.method public setOnDistrictSearchListener(Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/bd;->c:Lcom/amap/api/services/district/DistrictSearch$OnDistrictSearchListener;

    return-void
.end method

.method public setQuery(Lcom/amap/api/services/district/DistrictSearchQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/bd;->b:Lcom/amap/api/services/district/DistrictSearchQuery;

    return-void
.end method
