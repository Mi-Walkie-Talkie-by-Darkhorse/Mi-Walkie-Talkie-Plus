.class Lcom/tencent/connect/common/AssistActivity$1;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/common/AssistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/common/AssistActivity;


# direct methods
.method constructor <init>(Lcom/tencent/connect/common/AssistActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/connect/common/AssistActivity$1;->a:Lcom/tencent/connect/common/AssistActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/connect/common/AssistActivity$1;->a:Lcom/tencent/connect/common/AssistActivity;

    invoke-virtual {v0}, Lcom/tencent/connect/common/AssistActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "-->finish by timeout"

    invoke-static {v0, v1}, Lcom/tencent/open/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/connect/common/AssistActivity$1;->a:Lcom/tencent/connect/common/AssistActivity;

    invoke-virtual {v0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
