.class public Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment_ViewBinding;
.super Ljava/lang/Object;
.source "MyFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;

    .line 3
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09048b

    const-string v2, "field \'titleBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->titleBar:Landroid/widget/LinearLayout;

    .line 4
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    const v1, 0x7f09041d

    const-string v2, "field \'mCivPortrait\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->mCivPortrait:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09041c

    const-string v2, "field \'userName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->userName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->titleBar:Landroid/widget/LinearLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->mCivPortrait:Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/tab/MyFragment;->userName:Landroid/widget/TextView;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
