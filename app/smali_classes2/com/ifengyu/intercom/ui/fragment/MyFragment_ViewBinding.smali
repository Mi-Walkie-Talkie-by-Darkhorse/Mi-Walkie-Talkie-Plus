.class public Lcom/ifengyu/intercom/ui/fragment/MyFragment_ViewBinding;
.super Ljava/lang/Object;
.source "MyFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/ui/fragment/MyFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/ifengyu/intercom/ui/fragment/MyFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MyFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/MyFragment;

    const v0, 0x7f100244

    const-string v1, "field \'titleBarTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->titleBarTitle:Landroid/widget/TextView;

    const v0, 0x7f10015b

    const-string v1, "field \'titleBarRight\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->titleBarRight:Landroid/widget/ImageView;

    const v0, 0x7f100265

    const-string v1, "field \'mCivPortrait\'"

    const-class v2, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->mCivPortrait:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    const v0, 0x7f100266

    const-string v1, "field \'userName\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->userName:Landroid/widget/TextView;

    const v0, 0x7f100267

    const-string v1, "field \'userID\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->userID:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/MyFragment;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->titleBarTitle:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->titleBarRight:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->mCivPortrait:Lcom/ifengyu/intercom/ui/widget/view/CirclrImageView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->userName:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->userID:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/fragment/MyFragment;

    return-void
.end method
