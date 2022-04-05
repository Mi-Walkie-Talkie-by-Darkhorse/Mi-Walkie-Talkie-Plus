.class final Lcom/amap/api/col/l3/fk$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/fk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/fk;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/fk;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/fk$1;->a:Lcom/amap/api/col/l3/fk;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/fk$1;->a:Lcom/amap/api/col/l3/fk;

    invoke-static {p1}, Lcom/amap/api/col/l3/fk;->a(Lcom/amap/api/col/l3/fk;)Lcom/amap/api/col/l3/fe;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/fk$1;->a:Lcom/amap/api/col/l3/fk;

    invoke-static {p1}, Lcom/amap/api/col/l3/fk;->b(Lcom/amap/api/col/l3/fk;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3/fk$1;->a:Lcom/amap/api/col/l3/fk;

    invoke-static {p1}, Lcom/amap/api/col/l3/fk;->c(Lcom/amap/api/col/l3/fk;)Lcom/amap/api/col/l3/fd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/col/l3/fd;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
