.class Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;
.super Ljava/lang/Object;
.source "ActivateDeviceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->k()V

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/d;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Z)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    const v2, 0x7f090029

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    const v2, 0x7f090179

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    const v2, 0x7f09002a

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2$2;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2$2;-><init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    const v2, 0x7f09006c

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2$1;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2$1;-><init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->b()Lcom/ifengyu/intercom/ui/widget/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->c()V

    return-void
.end method
