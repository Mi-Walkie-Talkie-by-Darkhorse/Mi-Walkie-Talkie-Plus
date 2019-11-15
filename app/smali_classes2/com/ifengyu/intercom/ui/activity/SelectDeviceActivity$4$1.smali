.class Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;
.super Ljava/lang/Object;
.source "SelectDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    const v2, 0x7f090235

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    const v1, 0x7f02016e

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->d(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1$1;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;)V

    const-wide/16 v2, 0x320

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
