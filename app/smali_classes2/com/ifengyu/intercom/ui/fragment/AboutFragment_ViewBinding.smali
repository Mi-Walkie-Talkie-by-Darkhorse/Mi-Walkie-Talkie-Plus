.class public Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding;
.super Ljava/lang/Object;
.source "AboutFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/fragment/AboutFragment;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/fragment/AboutFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/AboutFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f0904a9

    const-string v2, "field \'mTopbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090013

    const-string v2, "field \'aboutIcon\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->aboutIcon:Landroid/widget/ImageView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090012

    const-string v2, "field \'appVersionName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->appVersionName:Landroid/widget/TextView;

    const v0, 0x7f0900ef

    const-string v1, "method \'onViewClicked\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding;->b:Landroid/view/View;

    .line 8
    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding$a;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding;Lcom/ifengyu/intercom/ui/fragment/AboutFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09052a

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding;->c:Landroid/view/View;

    .line 11
    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding;Lcom/ifengyu/intercom/ui/fragment/AboutFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090528

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding;->d:Landroid/view/View;

    .line 14
    new-instance v2, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding$c;

    invoke-direct {v2, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding$c;-><init>(Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding;Lcom/ifengyu/intercom/ui/fragment/AboutFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090529

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 16
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding;->e:Landroid/view/View;

    .line 17
    new-instance v0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding$d;-><init>(Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding;Lcom/ifengyu/intercom/ui/fragment/AboutFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/AboutFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/AboutFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->aboutIcon:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment;->appVersionName:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding;->b:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding;->c:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding;->d:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/AboutFragment_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
