.class Lcom/ifengyu/intercom/ui/map/c/a/d$a;
.super Landroid/os/Handler;
.source "ClusterOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/map/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/c/a/d;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/c/a/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/c/a/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/c/a/d;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/map/c/a/d;->a(Lcom/ifengyu/intercom/ui/map/c/a/d;Ljava/util/List;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/ui/map/c/a/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/c/a/d;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/map/c/a/d;->a(Lcom/ifengyu/intercom/ui/map/c/a/d;Lcom/ifengyu/intercom/ui/map/c/a/a;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/ui/map/c/a/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/c/a/d;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/map/c/a/d;->b(Lcom/ifengyu/intercom/ui/map/c/a/d;Lcom/ifengyu/intercom/ui/map/c/a/a;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
