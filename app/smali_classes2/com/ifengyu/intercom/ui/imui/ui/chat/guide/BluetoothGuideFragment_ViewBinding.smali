.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment_ViewBinding;
.super Ljava/lang/Object;
.source "BluetoothGuideFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected target:Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment_ViewBinding;->target:Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;

    const v0, 0x7f1001b9

    const-string v1, "field \'mIbLeft\'"

    const-class v2, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    const v0, 0x7f1001b3

    const-string v1, "field \'mTvTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mTvTitle:Landroid/widget/TextView;

    const v0, 0x7f100097

    const-string v1, "field \'mTitleBar\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mTitleBar:Landroid/widget/FrameLayout;

    const v0, 0x7f1001ac

    const-string v1, "field \'mStartPage\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mStartPage:Landroid/widget/LinearLayout;

    const v0, 0x7f1001ab

    const-string v1, "field \'mWv\'"

    const-class v2, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mWv:Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;

    const v0, 0x7f1001aa

    const-string v1, "field \'mConnectingPage\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mConnectingPage:Landroid/widget/FrameLayout;

    const v0, 0x7f1001a9

    const-string v1, "field \'mConnectSuccessPage\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mConnectSuccessPage:Landroid/widget/LinearLayout;

    const v0, 0x7f1001a8

    const-string v1, "field \'mConnectFailedPage\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mConnectFailedPage:Landroid/widget/LinearLayout;

    const v0, 0x7f10022c

    const-string v1, "field \'mTvLookHelp\'"

    const-class v2, Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mTvLookHelp:Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;

    const v0, 0x7f10022d

    const-string v1, "field \'mBtnAction\'"

    const-class v2, Lcom/ifengyu/library/widget/view/QMUIAlphaButton;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/QMUIAlphaButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBtnAction:Lcom/ifengyu/library/widget/view/QMUIAlphaButton;

    const v0, 0x7f10022b

    const-string v1, "field \'mTvTips\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mTvTips:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment_ViewBinding;->target:Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mTvTitle:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mTitleBar:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mStartPage:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mWv:Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mConnectingPage:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mConnectSuccessPage:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mConnectFailedPage:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mTvLookHelp:Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBtnAction:Lcom/ifengyu/library/widget/view/QMUIAlphaButton;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mTvTips:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment_ViewBinding;->target:Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;

    return-void
.end method
