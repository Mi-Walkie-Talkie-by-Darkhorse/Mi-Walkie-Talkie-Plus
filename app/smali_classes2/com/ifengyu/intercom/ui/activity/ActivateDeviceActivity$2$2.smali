.class Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2$2;
.super Ljava/lang/Object;
.source "ActivateDeviceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2$2;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2$2;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2$2;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    const v2, 0x7f0900c3

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020128

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->a(ZZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2$2;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2$2;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;)V

    return-void
.end method
