.class Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Z)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    const v2, 0x7f110029

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->b(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    const v2, 0x7f110277

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    const v2, 0x7f11002a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b$b;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b$b;-><init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;->a:Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity;

    const v2, 0x7f110093

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b$a;-><init>(Lcom/ifengyu/intercom/ui/activity/ActivateDeviceActivity$b;)V

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a()Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d()V

    return-void
.end method
