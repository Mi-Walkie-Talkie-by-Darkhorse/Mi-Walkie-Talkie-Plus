.class Lcom/amap/api/mapcore/util/a$19;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/a;->a(IIIIZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Z

.field final synthetic g:[Lcom/autonavi/ae/gmap/style/StyleItem;

.field final synthetic h:Lcom/amap/api/mapcore/util/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/a;ZIIIIZ[Lcom/autonavi/ae/gmap/style/StyleItem;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a$19;->h:Lcom/amap/api/mapcore/util/a;

    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/a$19;->a:Z

    iput p3, p0, Lcom/amap/api/mapcore/util/a$19;->b:I

    iput p4, p0, Lcom/amap/api/mapcore/util/a$19;->c:I

    iput p5, p0, Lcom/amap/api/mapcore/util/a$19;->d:I

    iput p6, p0, Lcom/amap/api/mapcore/util/a$19;->e:I

    iput-boolean p7, p0, Lcom/amap/api/mapcore/util/a$19;->f:Z

    iput-object p8, p0, Lcom/amap/api/mapcore/util/a$19;->g:[Lcom/autonavi/ae/gmap/style/StyleItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a$19;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$19;->h:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/amap/api/mapcore/util/a$19;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapModeState(IZ)[I

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    iget v2, p0, Lcom/amap/api/mapcore/util/a$19;->c:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget v1, v0, v1

    iget v2, p0, Lcom/amap/api/mapcore/util/a$19;->d:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    aget v0, v0, v1

    iget v1, p0, Lcom/amap/api/mapcore/util/a$19;->e:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$19;->h:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/amap/api/mapcore/util/a$19;->b:I

    iget v2, p0, Lcom/amap/api/mapcore/util/a$19;->c:I

    iget v3, p0, Lcom/amap/api/mapcore/util/a$19;->d:I

    iget v4, p0, Lcom/amap/api/mapcore/util/a$19;->e:I

    iget-boolean v5, p0, Lcom/amap/api/mapcore/util/a$19;->a:Z

    iget-boolean v6, p0, Lcom/amap/api/mapcore/util/a$19;->f:Z

    iget-object v7, p0, Lcom/amap/api/mapcore/util/a$19;->g:[Lcom/autonavi/ae/gmap/style/StyleItem;

    invoke-virtual/range {v0 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->SetMapModeAndStyle(IIIIZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
