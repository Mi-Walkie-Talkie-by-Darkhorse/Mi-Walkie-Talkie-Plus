.class Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;
.super Ljava/lang/Object;
.source "SelectDeviceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->i(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/qmuiteam/qmui/widget/dialog/QMUITipDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->j(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/lite/h/h0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/h/h0;->d()Lcom/ifengyu/intercom/lite/e/f;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/u1;->f()I

    move-result p1

    if-ne p1, p2, :cond_0

    const-string p1, "SelectDeviceActivity"

    const-string p2, "dialog back pressed, cancel connection"

    .line 3
    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/z;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->j(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Lcom/ifengyu/intercom/lite/h/h0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/h/h0;->b()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
