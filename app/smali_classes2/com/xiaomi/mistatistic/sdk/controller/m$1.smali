.class Lcom/xiaomi/mistatistic/sdk/controller/m$1;
.super Landroid/os/Handler;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/m;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/m;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/m$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/m;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const-wide/16 v8, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "session_begin"

    invoke-static {v0, v1, v8, v9}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "last_deactivate"

    invoke-static {v0, v1, v8, v9}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pv_path"

    const-string v6, ""

    invoke-static {v0, v1, v6}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    cmp-long v0, v2, v8

    if-lez v0, :cond_1

    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/m$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/m;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Lcom/xiaomi/mistatistic/sdk/controller/m;Landroid/content/Context;JJ)V

    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/m$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/m;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Lcom/xiaomi/mistatistic/sdk/controller/m;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1df5e77
        :pswitch_0
    .end packed-switch
.end method
