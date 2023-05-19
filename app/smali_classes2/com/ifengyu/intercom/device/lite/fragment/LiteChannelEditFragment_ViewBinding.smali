.class public Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;
.super Ljava/lang/Object;
.source "LiteChannelEditFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f09049b

    const-string v2, "field \'mTopBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v0, 0x7f090251

    const-string v1, "field \'mItemReceiveFreq\' and method \'onClick\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemReceiveFreq\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mItemReceiveFreq:Lcom/ifengyu/library/widget/view/ItemView;

    .line 6
    iput-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;->b:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090254

    const-string v1, "field \'mItemSendFreq\' and method \'onClick\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemSendFreq\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mItemSendFreq:Lcom/ifengyu/library/widget/view/ItemView;

    .line 10
    iput-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;->c:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090252

    const-string v1, "field \'mItemReceiveTone\' and method \'onClick\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 13
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemReceiveTone\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mItemReceiveTone:Lcom/ifengyu/library/widget/view/ItemView;

    .line 14
    iput-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;->d:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding$c;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090255

    const-string v1, "field \'mItemSendTone\' and method \'onClick\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 17
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemSendTone\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mItemSendTone:Lcom/ifengyu/library/widget/view/ItemView;

    .line 18
    iput-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;->e:Landroid/view/View;

    .line 19
    new-instance v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding$d;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904ca

    const-string v2, "field \'mTvDescription\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mTvDescription:Landroid/widget/TextView;

    const v0, 0x7f0900a6

    const-string v1, "field \'mBtnClear\' and method \'onClick\'"

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 22
    const-class v1, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const-string v2, "field \'mBtnClear\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mBtnClear:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 23
    iput-object p2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;->f:Landroid/view/View;

    .line 24
    new-instance v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding$e;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mItemReceiveFreq:Lcom/ifengyu/library/widget/view/ItemView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mItemSendFreq:Lcom/ifengyu/library/widget/view/ItemView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mItemReceiveTone:Lcom/ifengyu/library/widget/view/ItemView;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mItemSendTone:Lcom/ifengyu/library/widget/view/ItemView;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mTvDescription:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment;->mBtnClear:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;->b:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;->c:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;->d:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;->e:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteChannelEditFragment_ViewBinding;->f:Landroid/view/View;

    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
