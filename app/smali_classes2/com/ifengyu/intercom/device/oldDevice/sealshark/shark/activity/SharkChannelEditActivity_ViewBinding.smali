.class public Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SharkChannelEditActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity_ViewBinding;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09048e

    const-string v2, "field \'mTitleBarLeft\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090491

    const-string v2, "field \'mTitleBarTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09048d

    const-string v2, "field \'mTitleBarConfirm\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    .line 6
    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    const v1, 0x7f0901ac

    const-string v2, "field \'mEtEditName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090508

    const-string v2, "field \'mTvTxFreq\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0901d3

    const-string v2, "field \'mFlTxFreq\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mFlTxFreq:Landroid/widget/FrameLayout;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904fa

    const-string v2, "field \'mTvRxFreq\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    .line 10
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0901d1

    const-string v2, "field \'mFlRxFreq\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mFlRxFreq:Landroid/widget/FrameLayout;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090509

    const-string v2, "field \'mTvTxCss\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    .line 12
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0901d4

    const-string v2, "field \'mFlTxCss\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mFlTxCss:Landroid/widget/FrameLayout;

    .line 13
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904fb

    const-string v2, "field \'mTvRxCss\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    .line 14
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0901d2

    const-string v2, "field \'mFlRXCss\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mFlRXCss:Landroid/widget/FrameLayout;

    .line 15
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900a8

    const-string v2, "field \'mDeleteLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mDeleteLayout:Landroid/widget/LinearLayout;

    .line 16
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0900a7

    const-string v2, "field \'mDeleteBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mDeleteBtn:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity_ViewBinding;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity_ViewBinding;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mFlTxFreq:Landroid/widget/FrameLayout;

    .line 9
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mFlRxFreq:Landroid/widget/FrameLayout;

    .line 11
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mFlTxCss:Landroid/widget/FrameLayout;

    .line 13
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mFlRXCss:Landroid/widget/FrameLayout;

    .line 15
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mDeleteLayout:Landroid/widget/LinearLayout;

    .line 16
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/activity/SharkChannelEditActivity;->mDeleteBtn:Landroid/widget/Button;

    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
