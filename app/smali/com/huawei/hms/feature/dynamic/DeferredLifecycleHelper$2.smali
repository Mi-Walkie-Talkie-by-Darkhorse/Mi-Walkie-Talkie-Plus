.class final Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;


# direct methods
.method constructor <init>(Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper$2;->d:Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;

    iput-object p2, p0, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper$2;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper$2;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;)V
    .locals 3

    iget-object p1, p0, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper$2;->d:Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;

    invoke-static {p1}, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;->b(Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper;)Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper$2;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper$2;->b:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/huawei/hms/feature/dynamic/DeferredLifecycleHelper$2;->c:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1, v2}, Lcom/huawei/hms/feature/dynamic/LifecycleDelegate;->onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
