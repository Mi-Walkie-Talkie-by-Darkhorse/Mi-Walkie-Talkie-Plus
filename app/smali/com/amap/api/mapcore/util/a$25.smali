.class Lcom/amap/api/mapcore/util/a$25;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/a;->f(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/amap/api/mapcore/util/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/a;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a$25;->c:Lcom/amap/api/mapcore/util/a;

    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/a$25;->a:Z

    iput p3, p0, Lcom/amap/api/mapcore/util/a$25;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a$25;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$25;->c:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/amap/api/mapcore/util/a$25;->b:I

    const/16 v2, 0x7e2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$25;->c:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/amap/api/mapcore/util/a$25;->b:I

    const/16 v2, 0x7e2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
