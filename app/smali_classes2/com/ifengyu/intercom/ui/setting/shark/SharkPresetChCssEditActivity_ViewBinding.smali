.class public Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SharkPresetChCssEditActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090419

    const-string v2, "field \'mTitleBarLeft\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09041d

    const-string v2, "field \'mTitleBarTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090418

    const-string v2, "field \'mTitleBarConfirm\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09049d

    const-string v2, "field \'mTvTxCss\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvTxCss:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f09018f

    const-string v2, "field \'mFlTxCss\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mFlTxCss:Landroid/widget/FrameLayout;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090491

    const-string v2, "field \'mTvRxCss\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvRxCss:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f09018d

    const-string v2, "field \'mFlRXCss\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mFlRXCss:Landroid/widget/FrameLayout;

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900c8

    const-string v2, "field \'channelNumber\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->channelNumber:Landroid/widget/TextView;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900c7

    const-string v2, "field \'channelName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->channelName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTitleBarLeft:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTitleBarTitle:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTitleBarConfirm:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvTxCss:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mFlTxCss:Landroid/widget/FrameLayout;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mTvRxCss:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->mFlRXCss:Landroid/widget/FrameLayout;

    .line 10
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->channelNumber:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/shark/SharkPresetChCssEditActivity;->channelName:Landroid/widget/TextView;

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
