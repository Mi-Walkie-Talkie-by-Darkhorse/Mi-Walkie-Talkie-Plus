.class final Lcom/amap/api/col/l3/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/m;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/m;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/m;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/m$1;->a:Lcom/amap/api/col/l3/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/m$1;->a:Lcom/amap/api/col/l3/m;

    invoke-static {v0}, Lcom/amap/api/col/l3/m;->a(Lcom/amap/api/col/l3/m;)Lcom/autonavi/ae/gmap/GLMapRender;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/m$1;->a:Lcom/amap/api/col/l3/m;

    invoke-static {v0}, Lcom/amap/api/col/l3/m;->a(Lcom/amap/api/col/l3/m;)Lcom/autonavi/ae/gmap/GLMapRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapRender;->onSurfaceDestory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
