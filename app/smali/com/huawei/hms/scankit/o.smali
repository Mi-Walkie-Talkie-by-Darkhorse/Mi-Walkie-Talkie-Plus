.class Lcom/huawei/hms/scankit/o;
.super Landroid/view/OrientationEventListener;
.source "IRemoteCustomedViewDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/scankit/q;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/scankit/q;


# direct methods
.method constructor <init>(Lcom/huawei/hms/scankit/q;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/scankit/o;->a:Lcom/huawei/hms/scankit/q;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/huawei/hms/scankit/o;->a:Lcom/huawei/hms/scankit/q;

    iget-object p1, p1, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/o;->a:Lcom/huawei/hms/scankit/q;

    const/16 v0, 0xb4

    invoke-static {p1, v0}, Lcom/huawei/hms/scankit/q;->a(Lcom/huawei/hms/scankit/q;I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/scankit/o;->a:Lcom/huawei/hms/scankit/q;

    const/16 v0, 0x10e

    invoke-static {p1, v0}, Lcom/huawei/hms/scankit/q;->a(Lcom/huawei/hms/scankit/q;I)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/huawei/hms/scankit/o;->a:Lcom/huawei/hms/scankit/q;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/huawei/hms/scankit/q;->a(Lcom/huawei/hms/scankit/q;I)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/huawei/hms/scankit/o;->a:Lcom/huawei/hms/scankit/q;

    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/huawei/hms/scankit/q;->a(Lcom/huawei/hms/scankit/q;I)V

    :goto_0
    return-void
.end method
