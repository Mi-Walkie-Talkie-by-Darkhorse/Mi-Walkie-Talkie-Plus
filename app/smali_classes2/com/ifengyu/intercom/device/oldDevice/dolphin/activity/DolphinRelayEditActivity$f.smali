.class Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity$f;
.super Ljava/lang/Object;
.source "DolphinRelayEditActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity$f;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity$f;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;

    invoke-static {p1, p2, p4}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->M(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;II)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity$f;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditDownTone:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity$f;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;

    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditDownTone:Landroid/widget/TextView;

    if-nez p4, :cond_0

    const/high16 p2, 0x41800000    # 16.0f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x41900000    # 18.0f

    :goto_0
    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
