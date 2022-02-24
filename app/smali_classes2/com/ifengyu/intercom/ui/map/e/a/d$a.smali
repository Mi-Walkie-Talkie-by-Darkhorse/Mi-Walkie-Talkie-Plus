.class Lcom/ifengyu/intercom/ui/map/e/a/d$a;
.super Landroid/os/Handler;
.source "ClusterOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/map/e/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/e/a/d;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/e/a/d;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/e/a/d;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ifengyu/intercom/ui/map/e/a/a;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/e/a/d;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/map/e/a/d;->b(Lcom/ifengyu/intercom/ui/map/e/a/d;Lcom/ifengyu/intercom/ui/map/e/a/a;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ifengyu/intercom/ui/map/e/a/a;

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/e/a/d;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/map/e/a/d;->a(Lcom/ifengyu/intercom/ui/map/e/a/d;Lcom/ifengyu/intercom/ui/map/e/a/a;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/a/d$a;->a:Lcom/ifengyu/intercom/ui/map/e/a/d;

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/ui/map/e/a/d;->a(Lcom/ifengyu/intercom/ui/map/e/a/d;Ljava/util/List;)V

    :goto_0
    return-void
.end method
