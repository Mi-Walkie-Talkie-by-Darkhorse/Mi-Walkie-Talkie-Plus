.class Lcom/amap/api/mapcore/util/a$29;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/a;->a(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/amap/api/mapcore/util/a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/a;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a$29;->d:Lcom/amap/api/mapcore/util/a;

    iput p2, p0, Lcom/amap/api/mapcore/util/a$29;->a:I

    iput p3, p0, Lcom/amap/api/mapcore/util/a$29;->b:I

    iput-boolean p4, p0, Lcom/amap/api/mapcore/util/a$29;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$29;->d:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$29;->d:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/amap/api/mapcore/util/a$29;->a:I

    const/16 v2, 0xa8e

    iget v3, p0, Lcom/amap/api/mapcore/util/a$29;->b:I

    iget-boolean v4, p0, Lcom/amap/api/mapcore/util/a$29;->c:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :cond_0
    return-void

    :cond_1
    move v4, v5

    goto :goto_0
.end method
