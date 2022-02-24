.class public Lcom/ifengyu/intercom/ui/fragment/MyFragment_ViewBinding;
.super Ljava/lang/Object;
.source "MyFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/fragment/MyFragment;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MyFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/MyFragment;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09041d

    const-string v2, "field \'titleBarTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->titleBarTitle:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09041a

    const-string v2, "field \'titleBarRight\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->titleBarRight:Landroid/widget/ImageView;

    .line 5
    const-class v0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    const v1, 0x7f0903a2

    const-string v2, "field \'mCivPortrait\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->mCivPortrait:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903a1

    const-string v2, "field \'userName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->userName:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09039f

    const-string v2, "field \'userID\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->userID:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/MyFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/MyFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->titleBarTitle:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->titleBarRight:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->mCivPortrait:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->userName:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->userID:Landroid/widget/TextView;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
