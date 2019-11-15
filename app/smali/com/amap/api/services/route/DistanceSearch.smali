.class public Lcom/amap/api/services/route/DistanceSearch;
.super Ljava/lang/Object;
.source "DistanceSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/route/DistanceSearch$OnDistanceSearchListener;,
        Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;
    }
.end annotation


# static fields
.field public static final TYPE_DISTANCE:I = 0x0

.field public static final TYPE_DRIVING_DISTANCE:I = 0x1


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IDistanceSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/col/sl/s;->a(Z)Lcom/amap/api/col/sl/bz;

    move-result-object v1

    const-string v2, "com.amap.api.services.dynamic.DistanceSearchWrapper"

    const-class v3, Lcom/amap/api/col/sl/bc;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/sl/cy;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/interfaces/IDistanceSearch;

    iput-object v0, p0, Lcom/amap/api/services/route/DistanceSearch;->a:Lcom/amap/api/services/interfaces/IDistanceSearch;
    :try_end_0
    .catch Lcom/amap/api/col/sl/bo; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/route/DistanceSearch;->a:Lcom/amap/api/services/interfaces/IDistanceSearch;

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/amap/api/col/sl/bc;

    invoke-direct {v0, p1}, Lcom/amap/api/col/sl/bc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/services/route/DistanceSearch;->a:Lcom/amap/api/services/interfaces/IDistanceSearch;
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


# virtual methods
.method public calculateRouteDistance(Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;)Lcom/amap/api/services/route/DistanceResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/services/route/DistanceSearch;->a:Lcom/amap/api/services/interfaces/IDistanceSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/route/DistanceSearch;->a:Lcom/amap/api/services/interfaces/IDistanceSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IDistanceSearch;->calculateRouteDistance(Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;)Lcom/amap/api/services/route/DistanceResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public calculateRouteDistanceAsyn(Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/route/DistanceSearch;->a:Lcom/amap/api/services/interfaces/IDistanceSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/route/DistanceSearch;->a:Lcom/amap/api/services/interfaces/IDistanceSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IDistanceSearch;->calculateRouteDistanceAsyn(Lcom/amap/api/services/route/DistanceSearch$DistanceQuery;)V

    :cond_0
    return-void
.end method

.method public setDistanceSearchListener(Lcom/amap/api/services/route/DistanceSearch$OnDistanceSearchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/route/DistanceSearch;->a:Lcom/amap/api/services/interfaces/IDistanceSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/route/DistanceSearch;->a:Lcom/amap/api/services/interfaces/IDistanceSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IDistanceSearch;->setDistanceSearchListener(Lcom/amap/api/services/route/DistanceSearch$OnDistanceSearchListener;)V

    :cond_0
    return-void
.end method
