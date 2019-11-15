.class Lcom/xiaomi/mistatistic/sdk/controller/f$1;
.super Ljava/lang/Object;
.source "EventDAO.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/f$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Lcom/xiaomi/mistatistic/sdk/controller/f;Z)Z

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/f;

    invoke-static {p2}, Lcom/xiaomi/mistatistic/sdk/a$a;->a(Landroid/os/IBinder;)Lcom/xiaomi/mistatistic/sdk/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Lcom/xiaomi/mistatistic/sdk/controller/f;Lcom/xiaomi/mistatistic/sdk/a;)Lcom/xiaomi/mistatistic/sdk/a;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Lcom/xiaomi/mistatistic/sdk/controller/f;Z)Z

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/f$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Lcom/xiaomi/mistatistic/sdk/controller/f;Lcom/xiaomi/mistatistic/sdk/a;)Lcom/xiaomi/mistatistic/sdk/a;

    return-void
.end method
