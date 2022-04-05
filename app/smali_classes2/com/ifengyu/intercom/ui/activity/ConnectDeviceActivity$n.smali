.class Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$n;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$n;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$n;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    const-class v0, Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$n;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
