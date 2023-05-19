.class public Lcom/ifengyu/intercom/receiver/NetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/receiver/NetReceiver$a;
    }
.end annotation


# instance fields
.field private a:Lcom/ifengyu/intercom/receiver/NetReceiver$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p1}, Lcom/ifengyu/library/utils/l;->d(Landroid/content/Context;)Z

    move-result p1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u7f51\u7edc\u72b6\u6001\uff1a-----"

    invoke-static {v0, p2}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/event/NetEvent;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/ifengyu/intercom/event/NetEvent;-><init>(Z)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->p(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/receiver/NetReceiver;->a:Lcom/ifengyu/intercom/receiver/NetReceiver$a;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Lcom/ifengyu/intercom/receiver/NetReceiver$a;->b()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/event/NetEvent;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/ifengyu/intercom/event/NetEvent;-><init>(Z)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->p(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/receiver/NetReceiver;->a:Lcom/ifengyu/intercom/receiver/NetReceiver$a;

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1}, Lcom/ifengyu/intercom/receiver/NetReceiver$a;->a()V

    :cond_1
    :goto_0
    return-void
.end method
