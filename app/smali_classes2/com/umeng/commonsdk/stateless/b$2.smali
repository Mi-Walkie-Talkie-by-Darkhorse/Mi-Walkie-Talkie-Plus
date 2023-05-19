.class Lcom/umeng/commonsdk/stateless/b$2;
.super Landroid/os/Handler;
.source "UMSLNetWorkSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/stateless/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/stateless/b;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/stateless/b;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b$2;->a:Lcom/umeng/commonsdk/stateless/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 2
    :pswitch_0
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->h()V

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->g()V

    goto :goto_1

    .line 4
    :pswitch_2
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->f()V

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    invoke-static {}, Lcom/umeng/commonsdk/stateless/b;->i()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x111
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
