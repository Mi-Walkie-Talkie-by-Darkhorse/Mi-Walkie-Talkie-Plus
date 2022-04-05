.class public Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;
.super Ljava/lang/Object;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f090426

    const-string v2, "field \'mTopBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const-class v0, Lcom/ifengyu/intercom/lite/widget/EmptyView;

    const v1, 0x7f090157

    const-string v2, "field \'mEmptyView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/widget/EmptyView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mEmptyView:Lcom/ifengyu/intercom/lite/widget/EmptyView;

    const-class v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const v1, 0x7f090093

    const-string v2, "field \'mBtnBackup\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnBackup:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090339

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0900a3

    const-string v1, "field \'mBtnRename\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const-string v3, "field \'mBtnRename\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnRename:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->b:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09009b

    const-string v1, "field \'mBtnImport\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const-string v3, "field \'mBtnImport\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnImport:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->c:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090096

    const-string v1, "field \'mBtnDelete\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    const-string v3, "field \'mBtnDelete\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnDelete:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->d:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding$c;-><init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mEmptyView:Lcom/ifengyu/intercom/lite/widget/EmptyView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnBackup:Lcom/qmuiteam/qmui/widget/roundwidget/QMUIRoundButton;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnRename:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnImport:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mBtnDelete:Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment;->mClOperationPanel:Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileListFragment_ViewBinding;->d:Landroid/view/View;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
