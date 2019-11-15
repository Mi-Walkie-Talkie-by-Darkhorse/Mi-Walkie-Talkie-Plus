.class Lcom/amap/api/mapcore/util/a$23;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/a;->d(IZ)V
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

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a$23;->c:Lcom/amap/api/mapcore/util/a;

    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/a$23;->a:Z

    iput p3, p0, Lcom/amap/api/mapcore/util/a$23;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/16 v7, 0xa8e

    const/16 v12, 0x400

    const/4 v8, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$23;->c:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a$23;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$23;->c:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/amap/api/mapcore/util/a$23;->b:I

    const/16 v2, 0xa2b

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$23;->c:Lcom/amap/api/mapcore/util/a;

    iget-object v5, v0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v6, p0, Lcom/amap/api/mapcore/util/a$23;->b:I

    move v9, v3

    move v10, v4

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$23;->c:Lcom/amap/api/mapcore/util/a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/amap/api/mapcore/util/a$23;->b:I

    move v2, v12

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$23;->c:Lcom/amap/api/mapcore/util/a;

    iget-object v5, v0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v6, p0, Lcom/amap/api/mapcore/util/a$23;->b:I

    move v9, v4

    move v10, v4

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$23;->c:Lcom/amap/api/mapcore/util/a;

    iget-object v1, v0, Lcom/amap/api/mapcore/util/a;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v2, p0, Lcom/amap/api/mapcore/util/a$23;->b:I

    move v3, v12

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    goto :goto_0
.end method
