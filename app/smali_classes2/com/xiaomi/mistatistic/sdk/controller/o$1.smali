.class Lcom/xiaomi/mistatistic/sdk/controller/o$1;
.super Landroid/os/Handler;
.source "ThermoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/o;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/o;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/o;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/o;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

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
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/o;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "handle shaking...."

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/o;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/o;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a(Lcom/xiaomi/mistatistic/sdk/controller/o;)Lcom/xiaomi/mistatistic/sdk/controller/o$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/controller/o$a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a(Lcom/xiaomi/mistatistic/sdk/controller/o;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/o;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->g()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
