.class public abstract Lcom/xiaomi/push/service/XMPushService$j;
.super Lcom/xiaomi/push/service/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "j"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/n$b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a()V
.end method

.method public run()V
    .locals 2

    iget v0, p0, Lcom/xiaomi/push/service/n$b;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/xiaomi/channel/commonutils/logger/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService$j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService$j;->a()V

    return-void
.end method
