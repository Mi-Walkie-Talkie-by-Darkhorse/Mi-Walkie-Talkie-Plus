.class final Lcom/amap/api/col/l3/j$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/j;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/amap/api/col/l3/j;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/j;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/j$8;->c:Lcom/amap/api/col/l3/j;

    iput p2, p0, Lcom/amap/api/col/l3/j$8;->a:I

    iput-boolean p3, p0, Lcom/amap/api/col/l3/j$8;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j$8;->c:Lcom/amap/api/col/l3/j;

    iget v1, p0, Lcom/amap/api/col/l3/j$8;->a:I

    iget-boolean v2, p0, Lcom/amap/api/col/l3/j$8;->b:Z

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/j;->a(Lcom/amap/api/col/l3/j;IZ)V

    iget-boolean v0, p0, Lcom/amap/api/col/l3/j$8;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v4, 0x1

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j$8;->c:Lcom/amap/api/col/l3/j;

    iget-object v1, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v2, p0, Lcom/amap/api/col/l3/j$8;->a:I

    const/16 v3, 0x7f1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    iget-object v0, p0, Lcom/amap/api/col/l3/j$8;->c:Lcom/amap/api/col/l3/j;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/j;->resetRenderTimeLong()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
