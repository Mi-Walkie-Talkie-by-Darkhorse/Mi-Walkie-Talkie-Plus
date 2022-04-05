.class public Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;
.super Ljava/lang/Object;

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


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09020f

    const-string v2, "field \'mIvPhoneArrow\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mIvPhoneArrow:Landroid/widget/ImageView;

    const v0, 0x7f0901f3

    const-string v1, "field \'mItemPassword\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    const-string v3, "field \'mItemPassword\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mItemPassword:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->b:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090476

    const-string v2, "field \'mTvIdValue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mTvIdValue:Landroid/widget/TextView;

    const-string v0, "method \'onClick\'"

    const v1, 0x7f0901e5

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->c:Landroid/view/View;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090391

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->d:Landroid/view/View;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$c;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$c;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090395

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->e:Landroid/view/View;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$d;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$d;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090393

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->f:Landroid/view/View;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$e;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$e;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09038f

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->g:Landroid/view/View;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$f;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$f;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901ec

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->h:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$g;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding$g;-><init>(Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mIvPhoneArrow:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mItemPassword:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity;->mTvIdValue:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyInfoSettingActivity_ViewBinding;->h:Landroid/view/View;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
