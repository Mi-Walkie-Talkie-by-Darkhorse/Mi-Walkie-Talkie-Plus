.class public Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;

    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f090426

    const-string v2, "field \'mTopBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v0, 0x7f0901e7

    const-string v1, "field \'mItemConfig\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemConfig\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mItemConfig:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->b:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901f2

    const-string v1, "field \'mItemName\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemName\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mItemName:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->c:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding$c;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901ec

    const-string v1, "field \'mItemId\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemId\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mItemId:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->d:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding$d;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090206

    const-string v1, "field \'mItemVoice\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemVoice\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mItemVoice:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->e:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding$e;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e9

    const-string v1, "field \'mItemDeploy\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemDeploy\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mItemDeploy:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->f:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding$f;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding$f;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901f1

    const-string v1, "field \'mItemMore\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemMore\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mItemMore:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->g:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding$g;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding$g;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090205

    const-string v1, "field \'mItemUpdate\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemUpdate\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mItemUpdate:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->h:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding$h;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding$h;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09045f

    const-string v2, "field \'mTvChannelName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mTvChannelName:Landroid/widget/TextView;

    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090158

    const-string v2, "field \'mEmptyBoard\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mEmptyBoard:Landroid/widget/LinearLayout;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090486

    const-string v2, "field \'mTvReceiveFreq\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mTvReceiveFreq:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090493

    const-string v2, "field \'mTvSendFreq\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mTvSendFreq:Landroid/widget/TextView;

    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0900eb

    const-string v2, "field \'mContentBoard\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mContentBoard:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900a5

    const-string v1, "field \'mBtnUnbind\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;

    const-string v3, "field \'mBtnUnbind\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mBtnUnbind:Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->i:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding$i;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding$i;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'onClick\'"

    const v1, 0x7f09022c

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->j:Landroid/view/View;

    new-instance v2, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding$j;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding$j;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901e3

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->k:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mItemConfig:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mItemName:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mItemId:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mItemVoice:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mItemDeploy:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mItemMore:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mItemUpdate:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mTvChannelName:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mEmptyBoard:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mTvReceiveFreq:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mTvSendFreq:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mContentBoard:Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mBtnUnbind:Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment_ViewBinding;->k:Landroid/view/View;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
