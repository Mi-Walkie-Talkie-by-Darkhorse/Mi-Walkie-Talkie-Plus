.class Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$16;
.super Ljava/lang/Object;
.source "ConnectDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->f()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$16;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$16;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$16;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$16;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;Z)V

    return-void
.end method
