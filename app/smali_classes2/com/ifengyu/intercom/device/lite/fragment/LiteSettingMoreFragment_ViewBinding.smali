.class public Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding;
.super Ljava/lang/Object;
.source "LiteSettingMoreFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f09049b

    const-string v2, "field \'mTopBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v0, 0x7f09024b

    const-string v1, "field \'mItemKeylessTalk\' and method \'onClick\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemKeylessTalk\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mItemKeylessTalk:Lcom/ifengyu/library/widget/view/ItemView;

    .line 6
    iput-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding;->b:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding;Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09023f

    const-string v1, "field \'mItemBannedOnBusy\' and method \'onClick\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemBannedOnBusy\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mItemBannedOnBusy:Lcom/ifengyu/library/widget/view/ItemView;

    .line 10
    iput-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding;->c:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding;Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090259

    const-string v1, "field \'mItemSquelchLevel\' and method \'onClick\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 13
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemSquelchLevel\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mItemSquelchLevel:Lcom/ifengyu/library/widget/view/ItemView;

    .line 14
    iput-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding;->d:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding$c;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding;Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090263

    const-string v1, "field \'mItemWideNarrowBand\' and method \'onClick\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 17
    const-class v1, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v2, "field \'mItemWideNarrowBand\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mItemWideNarrowBand:Lcom/ifengyu/library/widget/view/ItemView;

    .line 18
    iput-object p2, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding;->e:Landroid/view/View;

    .line 19
    new-instance v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding$d;-><init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding;Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mItemKeylessTalk:Lcom/ifengyu/library/widget/view/ItemView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mItemBannedOnBusy:Lcom/ifengyu/library/widget/view/ItemView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mItemSquelchLevel:Lcom/ifengyu/library/widget/view/ItemView;

    .line 7
    iput-object v1, v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment;->mItemWideNarrowBand:Lcom/ifengyu/library/widget/view/ItemView;

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding;->b:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding;->c:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding;->d:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingMoreFragment_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
