.class public Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MyInfoSettingActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f0904a9

    const-string v2, "field \'mTopbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090276

    const-string v2, "field \'mIvPhoneArrow\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mIvPhoneArrow:Landroid/widget/ImageView;

    const v0, 0x7f09024e

    const-string v1, "field \'mItemPassword\' and method \'onClick\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    const-class v2, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    const-string v3, "field \'mItemPassword\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mItemPassword:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    .line 7
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->b:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904da

    const-string v2, "field \'mTvIdValue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mTvIdValue:Landroid/widget/TextView;

    .line 10
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    const v1, 0x7f090194

    const-string v2, "field \'mCivPortrait\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mCivPortrait:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    const v0, 0x7f0900a2

    const-string v1, "field \'btnBottom\' and method \'onClick\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    const-class v2, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const-string v3, "field \'btnBottom\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->btnBottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 13
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->c:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09023e

    const-string v1, "method \'onClick\'"

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->d:Landroid/view/View;

    .line 17
    new-instance v2, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$c;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$c;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090410

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->e:Landroid/view/View;

    .line 20
    new-instance v2, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$d;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$d;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090414

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->f:Landroid/view/View;

    .line 23
    new-instance v2, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$e;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$e;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090412

    .line 24
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->g:Landroid/view/View;

    .line 26
    new-instance v2, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$f;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$f;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09040e

    .line 27
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->h:Landroid/view/View;

    .line 29
    new-instance v2, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$g;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$g;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090247

    .line 30
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 31
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->i:Landroid/view/View;

    .line 32
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$h;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$h;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mIvPhoneArrow:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mItemPassword:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mTvIdValue:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mCivPortrait:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->btnBottom:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->b:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->c:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->d:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->e:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->f:Landroid/view/View;

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->g:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->h:Landroid/view/View;

    .line 23
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->i:Landroid/view/View;

    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
