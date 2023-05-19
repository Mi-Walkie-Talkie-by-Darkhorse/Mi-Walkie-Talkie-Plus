.class public Lcom/huawei/hms/scankit/v;
.super Lcom/huawei/hms/scankit/y;
.source "IRemoteLocalViewDelegateImpl.java"


# instance fields
.field private D:Lcom/huawei/hms/scankit/drawable/ScanDrawable;

.field private E:Landroid/widget/ImageView;

.field private F:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/huawei/hms/feature/dynamic/IObjectWrapper;ZZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/huawei/hms/scankit/y;-><init>(Landroid/content/Context;ILcom/huawei/hms/feature/dynamic/IObjectWrapper;ZZ)V

    return-void
.end method


# virtual methods
.method protected d()Lcom/huawei/hms/scankit/ProviderRemoteView;
    .locals 3

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/ProviderRemoteView;

    .line 2
    invoke-static {}, Lcom/huawei/hms/feature/DynamicModuleInitializer;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/huawei/hms/feature/DynamicModuleInitializer;->getContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/huawei/hms/scankit/ProviderRemoteView;-><init>(Landroid/content/Context;ZZ)V

    return-object v0
.end method

.method protected f()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/huawei/hms/scankit/y;->f()V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->f:Lcom/huawei/hms/scankit/ProviderRemoteView;

    sget v1, Lcom/huawei/hms/scankit/R$id;->ivScan:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huawei/hms/scankit/v;->E:Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->f:Lcom/huawei/hms/scankit/ProviderRemoteView;

    sget v1, Lcom/huawei/hms/scankit/R$id;->back_img_in:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huawei/hms/scankit/v;->F:Landroid/widget/ImageView;

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/scankit/v;->E:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hms/scankit/util/c;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    const/16 v3, 0x208

    invoke-static {v2, v3}, Lcom/huawei/hms/scankit/util/c;->a(Landroid/content/Context;I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 7
    iget-object v1, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hms/scankit/util/c;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hms/scankit/util/c;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/v;->E:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    new-instance v0, Lcom/huawei/hms/scankit/drawable/ScanDrawable;

    iget-object v1, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/v;->D:Lcom/huawei/hms/scankit/drawable/ScanDrawable;

    .line 11
    iget-object v1, p0, Lcom/huawei/hms/scankit/v;->E:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/scankit/v;->F:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 13
    new-instance v1, Lcom/huawei/hms/scankit/u;

    invoke-direct {v1, p0}, Lcom/huawei/hms/scankit/u;-><init>(Lcom/huawei/hms/scankit/v;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/huawei/hms/scankit/util/b;->c(Landroid/app/Activity;)Z

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->f:Lcom/huawei/hms/scankit/ProviderRemoteView;

    sget v3, Lcom/huawei/hms/scankit/R$id;->title_scan:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 16
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 18
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 19
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/scankit/util/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->f:Lcom/huawei/hms/scankit/ProviderRemoteView;

    sget v3, Lcom/huawei/hms/scankit/R$id;->title_scan:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 22
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 23
    iget-object v4, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-static {v4}, Lcom/huawei/hms/scankit/util/b;->b(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 24
    iget-object v1, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    const/16 v4, 0x30

    invoke-static {v1, v4}, Lcom/huawei/hms/scankit/util/c;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v3, v2, v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xa

    .line 25
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 26
    :cond_4
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 27
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 28
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 30
    :cond_5
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/huawei/hms/scankit/util/b;->c(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/scankit/util/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 31
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/16 v1, 0x28

    if-eqz v0, :cond_6

    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 33
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ur"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ug"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 35
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "iw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 36
    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 37
    :cond_7
    iget-object v0, p0, Lcom/huawei/hms/scankit/v;->F:Landroid/widget/ImageView;

    if-nez v0, :cond_8

    return-void

    .line 38
    :cond_8
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 39
    iget-object v2, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/huawei/hms/scankit/util/c;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 40
    iget-object v1, p0, Lcom/huawei/hms/scankit/v;->F:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 41
    :cond_9
    iget-object v0, p0, Lcom/huawei/hms/scankit/y;->z:Landroid/widget/ImageView;

    if-nez v0, :cond_a

    return-void

    .line 42
    :cond_a
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 43
    iget-object v2, p0, Lcom/huawei/hms/scankit/q;->e:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/huawei/hms/scankit/util/c;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 44
    iget-object v1, p0, Lcom/huawei/hms/scankit/y;->z:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    :goto_2
    return-void
.end method

.method protected j()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/scankit/q;->f:Lcom/huawei/hms/scankit/ProviderRemoteView;

    sget v1, Lcom/huawei/hms/scankit/R$id;->back_img_in:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/huawei/hms/scankit/v;->F:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const/high16 v1, 0x43340000    # 180.0f

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/y;->k()V

    :cond_3
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/huawei/hms/scankit/q;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/v;->D:Lcom/huawei/hms/scankit/drawable/ScanDrawable;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/scankit/v;->D:Lcom/huawei/hms/scankit/drawable/ScanDrawable;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->start()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/huawei/hms/scankit/q;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/v;->D:Lcom/huawei/hms/scankit/drawable/ScanDrawable;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/scankit/v;->D:Lcom/huawei/hms/scankit/drawable/ScanDrawable;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/drawable/ScanDrawable;->stop()V

    :cond_1
    return-void
.end method
