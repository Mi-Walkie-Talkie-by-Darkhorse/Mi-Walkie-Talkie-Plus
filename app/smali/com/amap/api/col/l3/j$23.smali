.class final Lcom/amap/api/col/l3/j$23;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/j;->d(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/amap/api/col/l3/j;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/j;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j$23;->c:Lcom/amap/api/col/l3/j;

    iput-boolean p2, p0, Lcom/amap/api/col/l3/j$23;->a:Z

    iput p3, p0, Lcom/amap/api/col/l3/j$23;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j$23;->c:Lcom/amap/api/col/l3/j;

    iget-object v1, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/amap/api/col/l3/j$23;->a:Z

    if-eqz v0, :cond_0

    .line 3
    iget v2, p0, Lcom/amap/api/col/l3/j$23;->b:I

    const/16 v3, 0xa2b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/j$23;->c:Lcom/amap/api/col/l3/j;

    iget-object v1, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v2, p0, Lcom/amap/api/col/l3/j$23;->b:I

    const/16 v3, 0xa8e

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    .line 5
    iget-object v0, p0, Lcom/amap/api/col/l3/j$23;->c:Lcom/amap/api/col/l3/j;

    iget-object v1, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v2, p0, Lcom/amap/api/col/l3/j$23;->b:I

    const/16 v3, 0x400

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    return-void

    .line 6
    :cond_0
    iget v2, p0, Lcom/amap/api/col/l3/j$23;->b:I

    const/16 v3, 0xa8e

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    .line 7
    iget-object v0, p0, Lcom/amap/api/col/l3/j$23;->c:Lcom/amap/api/col/l3/j;

    iget-object v1, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v2, p0, Lcom/amap/api/col/l3/j$23;->b:I

    const/16 v3, 0x400

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :cond_1
    return-void
.end method
