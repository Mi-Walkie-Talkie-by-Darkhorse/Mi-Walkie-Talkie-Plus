.class public Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding;
.super Ljava/lang/Object;
.source "LiteSettingVoiceFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;

    .line 3
    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f090426

    const-string v2, "field \'mTopBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v0, 0x7f0901fb

    const-string v1, "field \'mItemStartupBeep\' and method \'onClick\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemStartupBeep\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->mItemStartupBeep:Lcom/ifengyu/library/widget/view/ItemView;

    .line 6
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding;->b:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901ee

    const-string v1, "field \'mItemKeyBeep\' and method \'onClick\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v3, "field \'mItemKeyBeep\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->mItemKeyBeep:Lcom/ifengyu/library/widget/view/ItemView;

    .line 10
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding;->c:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding$b;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090206

    const-string v1, "field \'mItemVoice\' and method \'onClick\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 13
    const-class v1, Lcom/ifengyu/library/widget/view/ItemView;

    const-string v2, "field \'mItemVoice\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/ItemView;

    iput-object v0, p1, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->mItemVoice:Lcom/ifengyu/library/widget/view/ItemView;

    .line 14
    iput-object p2, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding;->d:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding$c;-><init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding;Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding;->a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;

    .line 3
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    .line 4
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->mItemStartupBeep:Lcom/ifengyu/library/widget/view/ItemView;

    .line 5
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->mItemKeyBeep:Lcom/ifengyu/library/widget/view/ItemView;

    .line 6
    iput-object v1, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment;->mItemVoice:Lcom/ifengyu/library/widget/view/ItemView;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding;->b:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding;->c:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingVoiceFragment_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
