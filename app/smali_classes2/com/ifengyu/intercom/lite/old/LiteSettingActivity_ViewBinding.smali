.class public Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LiteSettingActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;

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

.field private l:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f090426

    const-string v2, "field \'mTopBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v0, 0x7f0901e7

    const-string v1, "field \'mItemConfig\' and method \'onClick\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemConfig\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemConfig:Lcom/ifengyu/library/widget/view/ItemView;

    .line 6
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->b:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$c;-><init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901f2

    const-string v1, "field \'mItemName\' and method \'onClick\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemName\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemName:Lcom/ifengyu/library/widget/view/ItemView;

    .line 10
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->c:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$d;-><init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901ec

    const-string v1, "field \'mItemId\' and method \'onClick\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 13
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemId\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemId:Lcom/ifengyu/library/widget/view/ItemView;

    .line 14
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->d:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$e;-><init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901f0

    const-string v1, "field \'mItemLocation\' and method \'onClick\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 17
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemLocation\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemLocation:Lcom/ifengyu/library/widget/view/ItemView;

    .line 18
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->e:Landroid/view/View;

    .line 19
    new-instance v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$f;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$f;-><init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090200

    const-string v1, "field \'mItemTime\' and method \'onClick\'"

    .line 20
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 21
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemTime\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemTime:Lcom/ifengyu/library/widget/view/ItemView;

    .line 22
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->f:Landroid/view/View;

    .line 23
    new-instance v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$g;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$g;-><init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090206

    const-string v1, "field \'mItemVoice\' and method \'onClick\'"

    .line 24
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 25
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemVoice\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemVoice:Lcom/ifengyu/library/widget/view/ItemView;

    .line 26
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->g:Landroid/view/View;

    .line 27
    new-instance v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$h;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$h;-><init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e9

    const-string v1, "field \'mItemDeploy\' and method \'onClick\'"

    .line 28
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 29
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemDeploy\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemDeploy:Lcom/ifengyu/library/widget/view/ItemView;

    .line 30
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->h:Landroid/view/View;

    .line 31
    new-instance v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$i;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$i;-><init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901f1

    const-string v1, "field \'mItemMore\' and method \'onClick\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 33
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemMore\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemMore:Lcom/ifengyu/library/widget/view/ItemView;

    .line 34
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->i:Landroid/view/View;

    .line 35
    new-instance v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$j;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$j;-><init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090205

    const-string v1, "field \'mItemUpdate\' and method \'onClick\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 37
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemUpdate\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemUpdate:Lcom/ifengyu/library/widget/view/ItemView;

    .line 38
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->j:Landroid/view/View;

    .line 39
    new-instance v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$k;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$k;-><init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09045f

    const-string v2, "field \'mTvChannelName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mTvChannelName:Landroid/widget/TextView;

    .line 41
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090158

    const-string v2, "field \'mEmptyBoard\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mEmptyBoard:Landroid/widget/LinearLayout;

    .line 42
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090486

    const-string v2, "field \'mTvReceiveFreq\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mTvReceiveFreq:Landroid/widget/TextView;

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090493

    const-string v2, "field \'mTvSendFreq\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mTvSendFreq:Landroid/widget/TextView;

    .line 44
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0900eb

    const-string v2, "field \'mContentBoard\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mContentBoard:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900a5

    const-string v1, "field \'mBtnUnbind\' and method \'onClick\'"

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 46
    const-class v2, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;

    const-string v3, "field \'mBtnUnbind\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mBtnUnbind:Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;

    .line 47
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->k:Landroid/view/View;

    .line 48
    new-instance v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09022c

    const-string v1, "method \'onClick\'"

    .line 49
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 50
    iput-object p2, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->l:Landroid/view/View;

    .line 51
    new-instance v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemConfig:Lcom/ifengyu/library/widget/view/ItemView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemName:Lcom/ifengyu/library/widget/view/ItemView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemId:Lcom/ifengyu/library/widget/view/ItemView;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemLocation:Lcom/ifengyu/library/widget/view/ItemView;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemTime:Lcom/ifengyu/library/widget/view/ItemView;

    .line 9
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemVoice:Lcom/ifengyu/library/widget/view/ItemView;

    .line 10
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemDeploy:Lcom/ifengyu/library/widget/view/ItemView;

    .line 11
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemMore:Lcom/ifengyu/library/widget/view/ItemView;

    .line 12
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mItemUpdate:Lcom/ifengyu/library/widget/view/ItemView;

    .line 13
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mTvChannelName:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mEmptyBoard:Landroid/widget/LinearLayout;

    .line 15
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mTvReceiveFreq:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mTvSendFreq:Landroid/widget/TextView;

    .line 17
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mContentBoard:Landroid/widget/RelativeLayout;

    .line 18
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity;->mBtnUnbind:Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->b:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->c:Landroid/view/View;

    .line 23
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->d:Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->e:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->f:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->g:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->h:Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->i:Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->j:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->k:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/old/LiteSettingActivity_ViewBinding;->l:Landroid/view/View;

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
