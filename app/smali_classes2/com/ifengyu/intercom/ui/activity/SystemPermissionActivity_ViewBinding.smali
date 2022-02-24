.class public Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SystemPermissionActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f090432

    const-string v2, "field \'mTopBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902e3

    const-string v2, "field \'notifyValue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->notifyValue:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900b5

    const-string v2, "field \'cameraValue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->cameraValue:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090242

    const-string v2, "field \'locationValue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->locationValue:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903dd

    const-string v2, "field \'storageValue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->storageValue:Landroid/widget/TextView;

    const-string v0, "method \'onViewClicked\'"

    const v1, 0x7f090240

    .line 8
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->b:Landroid/view/View;

    .line 10
    new-instance v2, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$a;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0903db

    .line 11
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->c:Landroid/view/View;

    .line 13
    new-instance v2, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900b3

    .line 14
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 15
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->d:Landroid/view/View;

    .line 16
    new-instance v2, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$c;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$c;-><init>(Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902e1

    .line 17
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->e:Landroid/view/View;

    .line 19
    new-instance v2, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$d;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$d;-><init>(Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090241

    .line 20
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->f:Landroid/view/View;

    .line 22
    new-instance v2, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$e;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$e;-><init>(Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0903dc

    .line 23
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 24
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->g:Landroid/view/View;

    .line 25
    new-instance v2, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$f;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$f;-><init>(Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900b4

    .line 26
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->h:Landroid/view/View;

    .line 28
    new-instance v2, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$g;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$g;-><init>(Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902e2

    .line 29
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 30
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->i:Landroid/view/View;

    .line 31
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$h;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$h;-><init>(Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->notifyValue:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->cameraValue:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->locationValue:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->storageValue:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->b:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->c:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->d:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->e:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->f:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->g:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->h:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->i:Landroid/view/View;

    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
