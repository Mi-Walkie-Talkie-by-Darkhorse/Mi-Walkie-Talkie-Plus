.class Lcom/sina/weibo/sdk/utils/AidTask$c;
.super Landroid/os/Handler;
.source "AidTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/utils/AidTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sina/weibo/sdk/utils/AidTask$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/utils/AidTask$b;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz v0, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sina/weibo/sdk/utils/AidTask$a;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/utils/AidTask$a;->b()Lcom/sina/weibo/sdk/utils/AidTask$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/utils/AidTask$b;->a(Lcom/sina/weibo/sdk/utils/AidTask$a;)V

    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/utils/AidTask$b;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
