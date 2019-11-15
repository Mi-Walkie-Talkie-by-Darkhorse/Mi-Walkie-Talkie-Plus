.class public Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;
.super Lcom/xiaomi/account/openauth/AuthorizeActivityBase;
.source "CustomizedAuthorizedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const v0, 0x7f100097

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/a;->a()I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->a:Landroid/widget/ImageView;

    const v1, 0x7f020100

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f006c

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f10015b

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->c:Landroid/widget/ImageView;

    const v1, 0x7f02012b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->b:Landroid/widget/TextView;

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->refreshWebView()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f10015b -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-super {p0, p1}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->b(Landroid/app/Activity;)Z

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040023

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f006b

    invoke-static {v2}, Lcom/ifengyu/intercom/b/ad;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    invoke-super {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->e:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->e:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    :cond_0
    new-instance v2, Landroid/widget/ProgressBar;

    const v3, 0x1010078

    invoke-direct {v2, p0, v5, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->d:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->d:Landroid/widget/ProgressBar;

    const v3, 0x7f02012e

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->d:Landroid/widget/ProgressBar;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lcom/ifengyu/intercom/b/v;->a(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->a()V

    return-void
.end method

.method protected onHideErrorUI()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected onHideProgress()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onPause()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onResume()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method protected onShowErrorUI()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected onShowProgress()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onUpdateProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/CustomizedAuthorizedActivity;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
