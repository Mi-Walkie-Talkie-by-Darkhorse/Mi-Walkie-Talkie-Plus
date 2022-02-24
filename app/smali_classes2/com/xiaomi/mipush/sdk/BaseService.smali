.class public abstract Lcom/xiaomi/mipush/sdk/BaseService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/BaseService$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/mipush/sdk/BaseService$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Z
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/BaseService;->a:Lcom/xiaomi/mipush/sdk/BaseService$a;

    if-nez p1, :cond_0

    new-instance p1, Lcom/xiaomi/mipush/sdk/BaseService$a;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Lcom/xiaomi/mipush/sdk/BaseService$a;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/BaseService;->a:Lcom/xiaomi/mipush/sdk/BaseService$a;

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/BaseService;->a:Lcom/xiaomi/mipush/sdk/BaseService$a;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/BaseService$a;->a()V

    return-void
.end method
