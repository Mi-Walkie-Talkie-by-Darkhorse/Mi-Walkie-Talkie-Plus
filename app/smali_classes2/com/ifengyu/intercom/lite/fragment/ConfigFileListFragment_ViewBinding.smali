.class public Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ConfigFileListFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f090426

    const-string v2, "field \'mTopBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    const-class v0, Lcom/ifengyu/intercom/lite/widget/EmptyView;

    const v1, 0x7f090157

    const-string v2, "field \'mEmptyView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/widget/EmptyView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mEmptyView:Lcom/ifengyu/intercom/lite/widget/EmptyView;

    .line 5
    const-class v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v1, 0x7f090093

    const-string v2, "field \'mBtnBackup\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnBackup:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 6
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090339

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0900a3

    const-string v1, "field \'mBtnRename\' and method \'onClick\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const-string v3, "field \'mBtnRename\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnRename:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 9
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->b:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09009b

    const-string v1, "field \'mBtnImport\' and method \'onClick\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    const-class v2, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const-string v3, "field \'mBtnImport\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnImport:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 13
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->c:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090096

    const-string v1, "field \'mBtnDelete\' and method \'onClick\'"

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 16
    const-class v2, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const-string v3, "field \'mBtnDelete\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnDelete:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 17
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->d:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding$c;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    const-class v0, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    const v1, 0x7f0900dc

    const-string v2, "field \'mClOperationPanel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    iput-object p2, p1, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mClOperationPanel:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mEmptyView:Lcom/ifengyu/intercom/lite/widget/EmptyView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnBackup:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnRename:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnImport:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 9
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnDelete:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    .line 10
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mClOperationPanel:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->b:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->c:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
