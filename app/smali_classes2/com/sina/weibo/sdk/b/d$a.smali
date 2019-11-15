.class Lcom/sina/weibo/sdk/b/d$a;
.super Landroid/os/Handler;
.source "AppInvokeCmdExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/b/d;


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/b/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/b/d$a;->a:Lcom/sina/weibo/sdk/b/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/b/d$a;->a:Lcom/sina/weibo/sdk/b/d;

    invoke-static {v0}, Lcom/sina/weibo/sdk/b/d;->a(Lcom/sina/weibo/sdk/b/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sina/weibo/sdk/b/c;

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/b/d;->a(Landroid/content/Context;Lcom/sina/weibo/sdk/b/c;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
