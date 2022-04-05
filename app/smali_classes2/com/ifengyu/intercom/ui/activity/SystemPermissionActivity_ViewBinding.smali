.class public Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;
.super Ljava/lang/Object;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;

    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f090432

    const-string v2, "field \'mTopBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902e3

    const-string v2, "field \'notifyValue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->notifyValue:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900b5

    const-string v2, "field \'cameraValue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->cameraValue:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090242

    const-string v2, "field \'locationValue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->locationValue:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903dd

    const-string v2, "field \'storageValue\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->storageValue:Landroid/widget/TextView;

    const-string v0, "method \'onViewClicked\'"

    const v1, 0x7f090240

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->b:Landroid/view/View;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$a;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0903db

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->c:Landroid/view/View;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900b3

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->d:Landroid/view/View;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$c;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$c;-><init>(Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902e1

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->e:Landroid/view/View;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$d;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$d;-><init>(Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090241

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->f:Landroid/view/View;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$e;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$e;-><init>(Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0903dc

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->g:Landroid/view/View;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$f;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$f;-><init>(Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900b4

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->h:Landroid/view/View;

    new-instance v2, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$g;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding$g;-><init>(Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902e2

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->i:Landroid/view/View;

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

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->notifyValue:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->cameraValue:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->locationValue:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity;->storageValue:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SystemPermissionActivity_ViewBinding;->i:Landroid/view/View;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
