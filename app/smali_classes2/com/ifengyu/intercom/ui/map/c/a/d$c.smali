.class Lcom/ifengyu/intercom/ui/map/c/a/d$c;
.super Landroid/os/Handler;
.source "ClusterOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/map/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/c/a/d;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/c/a/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/a/d$c;->a:Lcom/ifengyu/intercom/ui/map/c/a/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d$c;->a:Lcom/ifengyu/intercom/ui/map/c/a/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/c/a/d;->a(Lcom/ifengyu/intercom/ui/map/c/a/d;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/ui/map/c/a/c;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/a/d$c;->a:Lcom/ifengyu/intercom/ui/map/c/a/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/c/a/d;->b(Lcom/ifengyu/intercom/ui/map/c/a/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/map/c/a/c;

    invoke-interface {v1}, Lcom/ifengyu/intercom/ui/map/c/a/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/map/c/a/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/c/a/d$c;->a:Lcom/ifengyu/intercom/ui/map/c/a/d;

    invoke-static {v2}, Lcom/ifengyu/intercom/ui/map/c/a/d;->b(Lcom/ifengyu/intercom/ui/map/c/a/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/a/d$c;->a:Lcom/ifengyu/intercom/ui/map/c/a/d;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/c/a/d;->b(Lcom/ifengyu/intercom/ui/map/c/a/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d$c;->a:Lcom/ifengyu/intercom/ui/map/c/a/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/c/a/d;->a(Lcom/ifengyu/intercom/ui/map/c/a/d;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
