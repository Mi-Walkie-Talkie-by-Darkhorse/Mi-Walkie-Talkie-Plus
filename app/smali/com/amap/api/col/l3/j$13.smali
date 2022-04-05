.class final Lcom/amap/api/col/l3/j$13;
.super Ljava/lang/Object;

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
.field final synthetic a:Landroid/view/MotionEvent;

.field final synthetic b:Lcom/amap/api/col/l3/j;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/j;Landroid/view/MotionEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/j$13;->b:Lcom/amap/api/col/l3/j;

    iput-object p2, p0, Lcom/amap/api/col/l3/j$13;->a:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3/j$13;->b:Lcom/amap/api/col/l3/j;

    iget-object v2, p0, Lcom/amap/api/col/l3/j$13;->a:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/amap/api/col/l3/j$13;->a:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3/j;->a(Lcom/amap/api/col/l3/j;II)Lcom/amap/api/maps/model/Poi;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3/j$13;->b:Lcom/amap/api/col/l3/j;

    invoke-static {v2}, Lcom/amap/api/col/l3/j;->o(Lcom/amap/api/col/l3/j;)Lcom/amap/api/maps/AMap$OnPOIClickListener;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    const/16 v2, 0x14

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/amap/api/col/l3/j$13;->b:Lcom/amap/api/col/l3/j;

    iget-object v1, v1, Lcom/amap/api/col/l3/j;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j$13;->b:Lcom/amap/api/col/l3/j;

    iget-object v1, p0, Lcom/amap/api/col/l3/j$13;->a:Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/j;->a(Lcom/amap/api/col/l3/j;Landroid/view/MotionEvent;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/j$13;->b:Lcom/amap/api/col/l3/j;

    iget-object v1, p0, Lcom/amap/api/col/l3/j$13;->a:Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/j;->a(Lcom/amap/api/col/l3/j;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
