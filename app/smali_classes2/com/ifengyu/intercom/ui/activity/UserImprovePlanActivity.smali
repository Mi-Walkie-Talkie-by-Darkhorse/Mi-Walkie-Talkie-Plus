.class public Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;
.super Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;
.source "UserImprovePlanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field j:Landroid/widget/ImageView;

.field k:Landroid/widget/TextView;

.field l:Landroid/webkit/WebView;

.field m:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;-><init>()V

    return-void
.end method

.method private F()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f1101b5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private G(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f1101b5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->m:Landroid/widget/TextView;

    const-string v0, "#FFFB5E5E"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f11020f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->m:Landroid/widget/TextView;

    const-string v0, "#FF2B8DFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090050

    if-eq p1, v0, :cond_1

    const v0, 0x7f09048e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->F()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->G(Z)V

    .line 5
    invoke-static {p1}, Lcom/ifengyu/intercom/p/d0;->w0(Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->G(Z)V

    .line 7
    invoke-static {p1}, Lcom/ifengyu/intercom/p/d0;->w0(Z)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0028

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->setContentView(I)V

    const p1, 0x7f09048e

    .line 3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->j:Landroid/widget/ImageView;

    const p1, 0x7f090491

    .line 4
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->k:Landroid/widget/TextView;

    const p1, 0x7f090545

    .line 5
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->l:Landroid/webkit/WebView;

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->l:Landroid/webkit/WebView;

    const-string v0, "file:///android_asset/improveplan/improvement_plan_en.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->l:Landroid/webkit/WebView;

    const-string v0, "file:///android_asset/improveplan/improvement_plan.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    const p1, 0x7f090050

    .line 9
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->o(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->m:Landroid/widget/TextView;

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->b0()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->G(Z)V

    .line 11
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f110429

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/UserImprovePlanActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
