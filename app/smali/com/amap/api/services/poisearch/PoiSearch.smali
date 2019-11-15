.class public Lcom/amap/api/services/poisearch/PoiSearch;
.super Ljava/lang/Object;
.source "PoiSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;,
        Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;,
        Lcom/amap/api/services/poisearch/PoiSearch$Query;
    }
.end annotation


# static fields
.field public static final CHINESE:Ljava/lang/String; = "zh-CN"

.field public static final ENGLISH:Ljava/lang/String; = "en"


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IPoiSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/poisearch/PoiSearch$Query;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/col/sl/s;->a(Z)Lcom/amap/api/col/sl/bz;

    move-result-object v1

    const-string v2, "com.amap.api.services.dynamic.PoiSearchWrapper"

    const-class v3, Lcom/amap/api/col/sl/bh;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-class v5, Lcom/amap/api/services/poisearch/PoiSearch$Query;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    aput-object p2, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/sl/cy;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/interfaces/IPoiSearch;

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;
    :try_end_0
    .catch Lcom/amap/api/col/sl/bo; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/amap/api/col/sl/bh;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/col/sl/bh;-><init>(Landroid/content/Context;Lcom/amap/api/services/poisearch/PoiSearch$Query;)V

    iput-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBound()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IPoiSearch;->getBound()Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IPoiSearch;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQuery()Lcom/amap/api/services/poisearch/PoiSearch$Query;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IPoiSearch;->getQuery()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchPOI()Lcom/amap/api/services/poisearch/PoiResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IPoiSearch;->searchPOI()Lcom/amap/api/services/poisearch/PoiResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchPOIAsyn()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IPoiSearch;->searchPOIAsyn()V

    :cond_0
    return-void
.end method

.method public searchPOIId(Ljava/lang/String;)Lcom/amap/api/services/core/PoiItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IPoiSearch;->searchPOIId(Ljava/lang/String;)Lcom/amap/api/services/core/PoiItem;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchPOIIdAsyn(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IPoiSearch;->searchPOIIdAsyn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBound(Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IPoiSearch;->setBound(Lcom/amap/api/services/poisearch/PoiSearch$SearchBound;)V

    :cond_0
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IPoiSearch;->setLanguage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnPoiSearchListener(Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IPoiSearch;->setOnPoiSearchListener(Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;)V

    :cond_0
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/poisearch/PoiSearch$Query;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch;->a:Lcom/amap/api/services/interfaces/IPoiSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IPoiSearch;->setQuery(Lcom/amap/api/services/poisearch/PoiSearch$Query;)V

    :cond_0
    return-void
.end method
