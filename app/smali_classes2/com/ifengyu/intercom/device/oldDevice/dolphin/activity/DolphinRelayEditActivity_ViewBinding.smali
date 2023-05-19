.class public Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DolphinRelayEditActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity_ViewBinding;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09048e

    const-string v2, "field \'mTitleBarLeft\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090491

    const-string v2, "field \'mTitleBarTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09048d

    const-string v2, "field \'mTitleBarConfirm\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    .line 6
    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    const v1, 0x7f0901bb

    const-string v2, "field \'mEtRelayEditName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904f6

    const-string v2, "field \'mTvRelayEditUpFreq\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditUpFreq:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0901cf

    const-string v2, "field \'mFlRelayEditUpFreq\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mFlRelayEditUpFreq:Landroid/widget/FrameLayout;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904f4

    const-string v2, "field \'mTvRelayEditDownFreq\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditDownFreq:Landroid/widget/TextView;

    .line 10
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0901cd

    const-string v2, "field \'mFlRelayEditDownFreq\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mFlRelayEditDownFreq:Landroid/widget/FrameLayout;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904f7

    const-string v2, "field \'mTvRelayEditUpTone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditUpTone:Landroid/widget/TextView;

    .line 12
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0901d0

    const-string v2, "field \'mFlRelayEditUpTone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mFlRelayEditUpTone:Landroid/widget/FrameLayout;

    .line 13
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904f5

    const-string v2, "field \'mTvRelayEditDownTone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditDownTone:Landroid/widget/TextView;

    .line 14
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0901ce

    const-string v2, "field \'mFlRelayEditDownTone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mFlRelayEditDownTone:Landroid/widget/FrameLayout;

    .line 15
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0900b4

    const-string v2, "field \'mBtnRelayEditDelete\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mBtnRelayEditDelete:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity_ViewBinding;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity_ViewBinding;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditUpFreq:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mFlRelayEditUpFreq:Landroid/widget/FrameLayout;

    .line 9
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditDownFreq:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mFlRelayEditDownFreq:Landroid/widget/FrameLayout;

    .line 11
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditUpTone:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mFlRelayEditUpTone:Landroid/widget/FrameLayout;

    .line 13
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mTvRelayEditDownTone:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mFlRelayEditDownTone:Landroid/widget/FrameLayout;

    .line 15
    iput-object v1, v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/activity/DolphinRelayEditActivity;->mBtnRelayEditDelete:Landroid/widget/Button;

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
