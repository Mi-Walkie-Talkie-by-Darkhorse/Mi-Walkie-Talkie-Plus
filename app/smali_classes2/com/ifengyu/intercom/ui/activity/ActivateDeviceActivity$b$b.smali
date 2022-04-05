.class Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b$b;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b$b;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    const p2, 0x7f1100f0

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7f08013e

    invoke-virtual {p1, v0, v0, p2, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(ZZLjava/lang/String;I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b$b;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->q:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-static {p1, v0, v1}, Lcom/ifengyu/intercom/i/k0;->a(Ljava/lang/Runnable;J)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b$b;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;)V

    return-void
.end method
