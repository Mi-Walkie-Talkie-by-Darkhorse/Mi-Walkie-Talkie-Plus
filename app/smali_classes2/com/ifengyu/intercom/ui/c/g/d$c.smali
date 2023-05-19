.class Lcom/ifengyu/intercom/ui/c/g/d$c;
.super Landroid/os/Handler;
.source "ClusterOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/c/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/c/g/d;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/c/g/d;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/c/g/d$c;->a:Lcom/ifengyu/intercom/ui/c/g/d;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ifengyu/intercom/ui/c/g/c;

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d$c;->a:Lcom/ifengyu/intercom/ui/c/g/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/c/g/d;->e(Lcom/ifengyu/intercom/ui/c/g/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/c/g/c;

    .line 4
    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/c/g/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/c/g/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d$c;->a:Lcom/ifengyu/intercom/ui/c/g/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/c/g/d;->e(Lcom/ifengyu/intercom/ui/c/g/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/c/g/d$c;->a:Lcom/ifengyu/intercom/ui/c/g/d;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/c/g/d;->e(Lcom/ifengyu/intercom/ui/c/g/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/c/g/d$c;->a:Lcom/ifengyu/intercom/ui/c/g/d;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/c/g/d;->d(Lcom/ifengyu/intercom/ui/c/g/d;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/c/g/d$c;->a:Lcom/ifengyu/intercom/ui/c/g/d;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/c/g/d;->d(Lcom/ifengyu/intercom/ui/c/g/d;)V

    :goto_0
    return-void
.end method
