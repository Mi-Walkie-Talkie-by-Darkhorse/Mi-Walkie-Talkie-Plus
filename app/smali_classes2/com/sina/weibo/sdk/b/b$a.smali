.class Lcom/sina/weibo/sdk/b/b$a;
.super Landroid/os/Handler;
.source "AppInstallCmdExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/b/b;


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/b/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/b/b$a;->a:Lcom/sina/weibo/sdk/b/b;

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
    iget-object v1, p0, Lcom/sina/weibo/sdk/b/b$a;->a:Lcom/sina/weibo/sdk/b/b;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sina/weibo/sdk/b/a;

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/b/b;->a(Lcom/sina/weibo/sdk/b/b;Lcom/sina/weibo/sdk/b/a;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b$a;->a:Lcom/sina/weibo/sdk/b/b;

    invoke-static {v0}, Lcom/sina/weibo/sdk/b/b;->a(Lcom/sina/weibo/sdk/b/b;)Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/sina/weibo/sdk/b/b$a;->a:Lcom/sina/weibo/sdk/b/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/b/b;->a(Lcom/sina/weibo/sdk/b/b;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
