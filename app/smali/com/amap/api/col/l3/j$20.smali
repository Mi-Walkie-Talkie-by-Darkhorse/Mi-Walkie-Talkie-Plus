.class final Lcom/amap/api/col/l3/j$20;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/j;->q(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/amap/api/col/l3/j;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/j;I)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/j$20;->b:Lcom/amap/api/col/l3/j;

    iput p2, p0, Lcom/amap/api/col/l3/j$20;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j$20;->b:Lcom/amap/api/col/l3/j;

    iget-object v0, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/amap/api/col/l3/j$20;->a:I

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->clearAllMessages(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3/j$20;->b:Lcom/amap/api/col/l3/j;

    iget-object v0, v0, Lcom/amap/api/col/l3/j;->f:Lcom/autonavi/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/amap/api/col/l3/j$20;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->clearAnimations(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
