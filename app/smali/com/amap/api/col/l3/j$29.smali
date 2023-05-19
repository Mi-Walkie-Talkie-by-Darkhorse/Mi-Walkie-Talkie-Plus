.class final Lcom/amap/api/col/l3/j$29;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/amap/api/col/l3/j;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/j;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j$29;->d:Lcom/amap/api/col/l3/j;

    iput p2, p0, Lcom/amap/api/col/l3/j$29;->a:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/amap/api/col/l3/j$29;->b:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3/j$29;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j$29;->d:Lcom/amap/api/col/l3/j;

    iget-object v1, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_0

    .line 2
    iget v2, p0, Lcom/amap/api/col/l3/j$29;->a:I

    const/16 v3, 0xa8e

    iget v4, p0, Lcom/amap/api/col/l3/j$29;->b:I

    iget-boolean v5, p0, Lcom/amap/api/col/l3/j$29;->c:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :cond_0
    return-void
.end method
