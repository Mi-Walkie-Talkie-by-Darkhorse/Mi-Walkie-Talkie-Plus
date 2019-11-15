.class Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$3;
.super Lcom/ifengyu/im/imservice/callback/Packetlistener;
.source "SessionListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->b(Lcom/ifengyu/im/imservice/entity/InviteNotify;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$3;->b:Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    iput-boolean p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$3;->a:Z

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/callback/Packetlistener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaild()V
    .locals 1

    const-string v0, "\u53d1\u9001\u5931\u8d25"

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment$3;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "\u5df2\u63a5\u53d7"

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u5df2\u62d2\u7edd"

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onTimeout()V
    .locals 1

    const-string v0, "\u53d1\u9001\u8d85\u65f6"

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
