.class Lcom/amap/api/mapcore/util/a$16;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/a;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/en;

.field final synthetic b:Lcom/amap/api/mapcore/util/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/a;Lcom/amap/api/mapcore/util/en;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a$16;->b:Lcom/amap/api/mapcore/util/a;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/a$16;->a:Lcom/amap/api/mapcore/util/en;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$16;->b:Lcom/amap/api/mapcore/util/a;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/a;->q(Lcom/amap/api/mapcore/util/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$16;->b:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->d:Lcom/amap/api/mapcore/util/ad;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$16;->b:Lcom/amap/api/mapcore/util/a;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/a$16;->b:Lcom/amap/api/mapcore/util/a;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/a;->d:Lcom/amap/api/mapcore/util/ad;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/a;->setIndoorBuildingInfo(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$16;->a:Lcom/amap/api/mapcore/util/en;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/en;->a(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
