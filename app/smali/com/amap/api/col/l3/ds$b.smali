.class final Lcom/amap/api/col/l3/ds$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/ds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/amap/api/col/l3/ds$a;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/amap/api/col/l3/ds$a;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/amap/api/col/l3/ds$a;->a:Lcom/amap/api/col/l3/ds;

    iget-object p1, v0, Lcom/amap/api/col/l3/ds$a;->b:[Ljava/lang/Object;

    invoke-static {}, Lcom/amap/api/col/l3/ds;->b()V

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/amap/api/col/l3/ds$a;->a:Lcom/amap/api/col/l3/ds;

    iget-object v0, v0, Lcom/amap/api/col/l3/ds$a;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/amap/api/col/l3/ds;->c(Lcom/amap/api/col/l3/ds;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
