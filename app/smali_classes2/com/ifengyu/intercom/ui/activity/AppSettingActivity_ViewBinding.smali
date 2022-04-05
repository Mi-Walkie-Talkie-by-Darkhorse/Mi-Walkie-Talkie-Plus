.class public Lcom/ifengyu/intercom/ui/activity/AppSettingActivity_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/activity/AppSettingActivity;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/activity/AppSettingActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/AppSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/AppSettingActivity;

    const-class v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v1, 0x7f090426

    const-string v2, "field \'mTopBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iput-object v0, p1, Lcom/ifengyu/intercom/ui/activity/AppSettingActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    const v0, 0x7f0901fd

    const-string v1, "method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/AppSettingActivity_ViewBinding;->b:Landroid/view/View;

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/AppSettingActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/activity/AppSettingActivity_ViewBinding$a;-><init>(Lcom/ifengyu/intercom/ui/activity/AppSettingActivity_ViewBinding;Lcom/ifengyu/intercom/ui/activity/AppSettingActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AppSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/AppSettingActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/AppSettingActivity_ViewBinding;->a:Lcom/ifengyu/intercom/ui/activity/AppSettingActivity;

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/activity/AppSettingActivity;->mTopBar:Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/AppSettingActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/AppSettingActivity_ViewBinding;->b:Landroid/view/View;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
