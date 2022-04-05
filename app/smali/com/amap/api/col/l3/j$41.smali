.class final Lcom/amap/api/col/l3/j$41;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/j;->afterDrawFrame(ILcom/autonavi/ae/gmap/GLMapState;)V
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

    iput-object p1, p0, Lcom/amap/api/col/l3/j$41;->b:Lcom/amap/api/col/l3/j;

    iput p2, p0, Lcom/amap/api/col/l3/j$41;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3/j$41;->b:Lcom/amap/api/col/l3/j;

    invoke-static {v0}, Lcom/amap/api/col/l3/j;->u(Lcom/amap/api/col/l3/j;)Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j$41;->b:Lcom/amap/api/col/l3/j;

    invoke-static {v0}, Lcom/amap/api/col/l3/j;->u(Lcom/amap/api/col/l3/j;)Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/col/l3/j$41;->a:I

    iget-object v2, p0, Lcom/amap/api/col/l3/j$41;->b:Lcom/amap/api/col/l3/j;

    iget v3, v2, Lcom/amap/api/col/l3/j;->g:I

    iget v2, v2, Lcom/amap/api/col/l3/j;->h:I

    invoke-interface {v0, v1, v3, v2}, Lcom/autonavi/ae/gmap/listener/MapSurfaceListener;->onSurfaceChanged(III)V

    :cond_0
    return-void
.end method
