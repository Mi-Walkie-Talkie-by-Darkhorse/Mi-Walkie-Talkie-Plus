.class Lcom/ifengyu/intercom/ui/b/f$a;
.super Landroid/os/Handler;
.source "GaoDeOfflineDownloadedChild.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/b/f;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/b/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/b/f$a;->a:Lcom/ifengyu/intercom/ui/b/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_5

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/b/f$a;->a:Lcom/ifengyu/intercom/ui/b/f;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/b/f;->d(Lcom/ifengyu/intercom/ui/b/f;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/b/f$a;->a:Lcom/ifengyu/intercom/ui/b/f;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/b/f;->b(Lcom/ifengyu/intercom/ui/b/f;I)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/b/f$a;->a:Lcom/ifengyu/intercom/ui/b/f;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/b/f;->c(Lcom/ifengyu/intercom/ui/b/f;I)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/b/f$a;->a:Lcom/ifengyu/intercom/ui/b/f;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/b/f;->e(Lcom/ifengyu/intercom/ui/b/f;I)V

    goto :goto_0

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/b/f$a;->a:Lcom/ifengyu/intercom/ui/b/f;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/b/f;->a(Lcom/ifengyu/intercom/ui/b/f;I)V

    goto :goto_0

    .line 9
    :cond_5
    :pswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/b/f$a;->a:Lcom/ifengyu/intercom/ui/b/f;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/b/f;->f(Lcom/ifengyu/intercom/ui/b/f;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method