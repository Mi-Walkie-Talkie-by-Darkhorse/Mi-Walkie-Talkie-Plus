.class public Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "UserImprovePlanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/webkit/WebView;

.field d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f0900ec

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->d:Landroid/widget/TextView;

    const-string v1, "#FFFB5E5E"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f090115

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->d:Landroid/widget/TextView;

    const-string v1, "#FF2B8DFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0900ec

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const-wide/32 v4, 0xea60

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->a(Z)V

    invoke-static {v1}, Lcom/ifengyu/intercom/b/w;->n(Z)V

    :goto_1
    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ab()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-static {v0, v4, v5}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadPolicy(IJ)V

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->enableExceptionCatcher(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->a(Z)V

    invoke-static {v2}, Lcom/ifengyu/intercom/b/w;->n(Z)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    invoke-static {v0, v4, v5}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadPolicy(IJ)V

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->enableExceptionCatcher(Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f1000ea -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04002b

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->setContentView(I)V

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->a:Landroid/widget/ImageView;

    const v0, 0x7f100244

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f1000dc

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->c:Landroid/webkit/WebView;

    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "file:///android_asset/improveplan/improvement_plan_en.html"

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    const v0, 0x7f1000ea

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->ab()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->b:Landroid/widget/TextView;

    const v1, 0x7f09024f

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string v0, "file:///android_asset/improveplan/improvement_plan.html"

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
