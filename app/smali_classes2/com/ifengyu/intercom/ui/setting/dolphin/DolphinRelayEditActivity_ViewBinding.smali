.class public Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DolphinRelayEditActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;

    const v0, 0x7f1000c3

    const-string v1, "field \'mTitleBarLeft\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    const v0, 0x7f100244

    const-string v1, "field \'mTitleBarTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v0, 0x7f10033c

    const-string v1, "field \'mTitleBarConfirm\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const v0, 0x7f100123

    const-string v1, "field \'mEtRelayEditName\'"

    const-class v2, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    const v0, 0x7f100125

    const-string v1, "field \'mTvRelayEditUpFreq\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditUpFreq:Landroid/widget/TextView;

    const v0, 0x7f100124

    const-string v1, "field \'mFlRelayEditUpFreq\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditUpFreq:Landroid/widget/FrameLayout;

    const v0, 0x7f100127

    const-string v1, "field \'mTvRelayEditDownFreq\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditDownFreq:Landroid/widget/TextView;

    const v0, 0x7f100126

    const-string v1, "field \'mFlRelayEditDownFreq\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditDownFreq:Landroid/widget/FrameLayout;

    const v0, 0x7f100129

    const-string v1, "field \'mTvRelayEditUpTone\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditUpTone:Landroid/widget/TextView;

    const v0, 0x7f100128

    const-string v1, "field \'mFlRelayEditUpTone\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditUpTone:Landroid/widget/FrameLayout;

    const v0, 0x7f10012b

    const-string v1, "field \'mTvRelayEditDownTone\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditDownTone:Landroid/widget/TextView;

    const v0, 0x7f10012a

    const-string v1, "field \'mFlRelayEditDownTone\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditDownTone:Landroid/widget/FrameLayout;

    const v0, 0x7f10012c

    const-string v1, "field \'mBtnRelayEditDelete\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mBtnRelayEditDelete:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mEtRelayEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditUpFreq:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditUpFreq:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditDownFreq:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditDownFreq:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditUpTone:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditUpTone:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mTvRelayEditDownTone:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mFlRelayEditDownTone:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;->mBtnRelayEditDelete:Landroid/widget/Button;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinRelayEditActivity;

    return-void
.end method
