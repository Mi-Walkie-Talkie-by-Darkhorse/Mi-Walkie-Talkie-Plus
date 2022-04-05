.class Lcom/ifengyu/intercom/ui/activity/k0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/k0;->b:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/k0;->a:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/k0;->b:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->n()Lcom/ifengyu/intercom/lite/f/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/k0;->a:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/lite/f/e;->a(Ljava/lang/String;)I

    return-void
.end method
