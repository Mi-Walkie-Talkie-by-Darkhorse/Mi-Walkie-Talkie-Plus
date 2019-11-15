.class public Lcom/xiaomi/network/HostRefreshService;
.super Landroid/app/IntentService;


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/network/HostManager;->getInstance()Lcom/xiaomi/network/HostManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/network/HostManager;->refreshFallbacks()V

    return-void
.end method
