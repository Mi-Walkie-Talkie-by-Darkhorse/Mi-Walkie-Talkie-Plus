.class Lcom/amap/api/mapcore/util/a$8;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/a;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/amap/api/mapcore/util/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/a;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a$8;->c:Lcom/amap/api/mapcore/util/a;

    iput p2, p0, Lcom/amap/api/mapcore/util/a$8;->a:I

    iput-boolean p3, p0, Lcom/amap/api/mapcore/util/a$8;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$8;->c:Lcom/amap/api/mapcore/util/a;

    iget v1, p0, Lcom/amap/api/mapcore/util/a$8;->a:I

    const/4 v2, 0x2

    iget-boolean v4, p0, Lcom/amap/api/mapcore/util/a$8;->b:Z

    invoke-static {v0, v1, v2, v4}, Lcom/amap/api/mapcore/util/a;->a(Lcom/amap/api/mapcore/util/a;IIZ)V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a$8;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$8;->c:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/amap/api/mapcore/util/a$8;->a:I

    const/16 v2, 0x7f1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$8;->c:Lcom/amap/api/mapcore/util/a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/a;->resetRenderTimeLong()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
