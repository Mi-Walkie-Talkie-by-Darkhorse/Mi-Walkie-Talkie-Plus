.class public Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment_ViewBinding;
.super Ljava/lang/Object;
.source "DolphinPresetFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;

    const v0, 0x7f10026c

    const-string v1, "field \'mBtnActiveDevice\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->mBtnActiveDevice:Landroid/widget/TextView;

    const v0, 0x7f10026b

    const-string v1, "field \'mLlActiveDeviceContainer\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->mLlActiveDeviceContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f10026a

    const-string v1, "field \'mRvRemote\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->mRvRemote:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f100269

    const-string v1, "field \'mLlLongDistanceContainer\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->mLlLongDistanceContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f10026d

    const-string v1, "field \'mRvPublic\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->mRvPublic:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->mBtnActiveDevice:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->mLlActiveDeviceContainer:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->mRvRemote:Landroid/support/v7/widget/RecyclerView;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->mLlLongDistanceContainer:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->mRvPublic:Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment_ViewBinding;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;

    return-void
.end method
