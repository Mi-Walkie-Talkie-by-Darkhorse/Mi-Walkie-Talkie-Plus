.class public Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding;
.super Ljava/lang/Object;
.source "DeviceCurGroupSettingFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f0904a9

    const-string v2, "field \'mTopbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    const-class v0, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    const v1, 0x7f0904a7

    const-string v2, "field \'topSettingLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->topSettingLayout:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    const v0, 0x7f090182

    const-string v1, "field \'doubleGroupMonitor\' and method \'onViewClicked\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'doubleGroupMonitor\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->doubleGroupMonitor:Lcom/ifengyu/library/widget/view/ItemView;

    .line 7
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding;->b:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding;Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090128

    const-string v2, "field \'currentGroupTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->currentGroupTitle:Landroid/widget/TextView;

    .line 10
    const-class v0, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    const v1, 0x7f090126

    const-string v2, "field \'currentGroupLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->currentGroupLayout:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    const v0, 0x7f09011e

    const-string v1, "field \'curGroupItem\' and method \'onViewClicked\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'curGroupItem\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->curGroupItem:Lcom/ifengyu/library/widget/view/ItemView;

    .line 13
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding;->c:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding;Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090294

    const-string v2, "field \'listenGroupTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->listenGroupTitle:Landroid/widget/TextView;

    .line 16
    const-class v0, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    const v1, 0x7f090292

    const-string v2, "field \'listenGroupLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->listenGroupLayout:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    const v0, 0x7f090291

    const-string v1, "field \'listenGroupItem\' and method \'onViewClicked\'"

    .line 17
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 18
    const-class v1, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v2, "field \'listenGroupItem\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->listenGroupItem:Lcom/ifengyu/library/widget/view/ItemView;

    .line 19
    iput-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding;->d:Landroid/view/View;

    .line 20
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding$c;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding;Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->mTopbar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->topSettingLayout:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->doubleGroupMonitor:Lcom/ifengyu/library/widget/view/ItemView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->currentGroupTitle:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->currentGroupLayout:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    .line 8
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->curGroupItem:Lcom/ifengyu/library/widget/view/ItemView;

    .line 9
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->listenGroupTitle:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->listenGroupLayout:Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    .line 11
    iput-object v1, v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment;->listenGroupItem:Lcom/ifengyu/library/widget/view/ItemView;

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding;->b:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding;->c:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceCurGroupSettingFragment_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
