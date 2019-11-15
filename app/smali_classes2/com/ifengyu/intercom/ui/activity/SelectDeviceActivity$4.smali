.class Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;
.super Ljava/lang/Object;
.source "SelectDeviceActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(ILcom/ifengyu/intercom/node/ConnectionConfiguration;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

.field final synthetic c:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;ILcom/ifengyu/intercom/node/ConnectionConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iput p2, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->a:I

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->b:Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Z)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    const v2, 0x7f090234

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020128

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(ZZLjava/lang/String;I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4$1;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$4;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
