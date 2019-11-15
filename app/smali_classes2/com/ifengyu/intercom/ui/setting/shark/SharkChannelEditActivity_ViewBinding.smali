.class public Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SharkChannelEditActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    const v0, 0x7f1000c3

    const-string v1, "field \'mTitleBarLeft\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    const v0, 0x7f100244

    const-string v1, "field \'mTitleBarTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    const v0, 0x7f10033c

    const-string v1, "field \'mTitleBarConfirm\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    const v0, 0x7f100134

    const-string v1, "field \'mEtEditName\'"

    const-class v2, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    const v0, 0x7f100138

    const-string v1, "field \'mTvTxFreq\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    const v0, 0x7f100137

    const-string v1, "field \'mFlTxFreq\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mFlTxFreq:Landroid/widget/FrameLayout;

    const v0, 0x7f100136

    const-string v1, "field \'mTvRxFreq\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    const v0, 0x7f100135

    const-string v1, "field \'mFlRxFreq\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mFlRxFreq:Landroid/widget/FrameLayout;

    const v0, 0x7f10013c

    const-string v1, "field \'mTvTxCss\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    const v0, 0x7f10013b

    const-string v1, "field \'mFlTxCss\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mFlTxCss:Landroid/widget/FrameLayout;

    const v0, 0x7f10013a

    const-string v1, "field \'mTvRxCss\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    const v0, 0x7f100139

    const-string v1, "field \'mFlRXCss\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mFlRXCss:Landroid/widget/FrameLayout;

    const v0, 0x7f100173

    const-string v1, "field \'mDeleteLayout\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mDeleteLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f10013d

    const-string v1, "field \'mDeleteBtn\'"

    const-class v2, Landroid/widget/Button;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mDeleteBtn:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mEtEditName:Lcom/ifengyu/intercom/ui/widget/view/ClearEditText;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvTxFreq:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mFlTxFreq:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvRxFreq:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mFlRxFreq:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvTxCss:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mFlTxCss:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mTvRxCss:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mFlRXCss:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mDeleteLayout:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;->mDeleteBtn:Landroid/widget/Button;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkChannelEditActivity;

    return-void
.end method
