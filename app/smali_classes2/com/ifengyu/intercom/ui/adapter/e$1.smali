.class Lcom/ifengyu/intercom/ui/adapter/e$1;
.super Landroid/os/Handler;
.source "GaoDeOfflineCityChild.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/adapter/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/adapter/e;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/adapter/e;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/e$1;->a:Lcom/ifengyu/intercom/ui/adapter/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/e$1;->a:Lcom/ifengyu/intercom/ui/adapter/e;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/adapter/e;->a(Lcom/ifengyu/intercom/ui/adapter/e;I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/e$1;->a:Lcom/ifengyu/intercom/ui/adapter/e;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/adapter/e;->b(Lcom/ifengyu/intercom/ui/adapter/e;I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e$1;->a:Lcom/ifengyu/intercom/ui/adapter/e;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/e;->a(Lcom/ifengyu/intercom/ui/adapter/e;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/e$1;->a:Lcom/ifengyu/intercom/ui/adapter/e;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/adapter/e;->c(Lcom/ifengyu/intercom/ui/adapter/e;I)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e$1;->a:Lcom/ifengyu/intercom/ui/adapter/e;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/e;->b(Lcom/ifengyu/intercom/ui/adapter/e;)V

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/adapter/e$1;->a:Lcom/ifengyu/intercom/ui/adapter/e;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/adapter/e;->d(Lcom/ifengyu/intercom/ui/adapter/e;I)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e$1;->a:Lcom/ifengyu/intercom/ui/adapter/e;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/e;->c(Lcom/ifengyu/intercom/ui/adapter/e;)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e$1;->a:Lcom/ifengyu/intercom/ui/adapter/e;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/e;->b(Lcom/ifengyu/intercom/ui/adapter/e;)V

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/e$1;->a:Lcom/ifengyu/intercom/ui/adapter/e;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/adapter/e;->d(Lcom/ifengyu/intercom/ui/adapter/e;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_5
        0x0 -> :sswitch_1
        0x1 -> :sswitch_4
        0x2 -> :sswitch_6
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_0
        0x6 -> :sswitch_7
        0x7 -> :sswitch_9
        0x65 -> :sswitch_8
        0x66 -> :sswitch_8
        0x67 -> :sswitch_8
    .end sparse-switch
.end method
