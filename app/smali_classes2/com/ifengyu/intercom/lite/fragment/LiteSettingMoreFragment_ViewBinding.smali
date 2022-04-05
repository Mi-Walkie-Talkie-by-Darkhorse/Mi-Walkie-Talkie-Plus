.class public Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;

    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f090426

    const-string v2, "field \'mTopBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v0, 0x7f0901ef

    const-string v1, "field \'mItemKeylessTalk\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemKeylessTalk\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mItemKeylessTalk:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding;->b:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e6

    const-string v1, "field \'mItemBannedOnBusy\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemBannedOnBusy\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mItemBannedOnBusy:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding;->c:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901fa

    const-string v1, "field \'mItemSquelchLevel\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemSquelchLevel\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mItemSquelchLevel:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding;->d:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding$c;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090207

    const-string v1, "field \'mItemWideNarrowBand\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    const-class v1, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v2, "field \'mItemWideNarrowBand\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mItemWideNarrowBand:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding;->e:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding$d;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mItemKeylessTalk:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mItemBannedOnBusy:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mItemSquelchLevel:Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment;->mItemWideNarrowBand:Lcom/ifengyu/library/widget/view/ItemView;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingMoreFragment_ViewBinding;->e:Landroid/view/View;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
