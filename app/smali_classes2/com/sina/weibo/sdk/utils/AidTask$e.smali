.class Lcom/sina/weibo/sdk/utils/AidTask$e;
.super Landroid/os/Handler;
.source "AidTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/utils/AidTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sina/weibo/sdk/utils/AidTask$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/AidTask$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/utils/AidTask$d;

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-interface {v0, p1}, Lcom/sina/weibo/sdk/utils/AidTask$d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sina/weibo/sdk/utils/AidTask$c;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/utils/AidTask$c;->a()Lcom/sina/weibo/sdk/utils/AidTask$c;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sina/weibo/sdk/utils/AidTask$d;->a(Lcom/sina/weibo/sdk/utils/AidTask$c;)V

    :cond_2
    :goto_0
    return-void
.end method
