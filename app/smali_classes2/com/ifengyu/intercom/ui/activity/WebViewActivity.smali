.class public Lcom/ifengyu/intercom/ui/activity/WebViewActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/activity/WebViewActivity$e;,
        Lcom/ifengyu/intercom/ui/activity/WebViewActivity$d;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private q:Landroid/webkit/WebView;

.field private r:Landroid/webkit/WebSettings;

.field private s:Landroid/widget/ProgressBar;

.field private t:Landroid/widget/TextView;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:I

.field private x:Landroid/widget/FrameLayout;

.field private y:Landroid/view/View;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->w:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->B:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->y:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->e(I)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->f(I)V

    return-void
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->s:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private e(I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->s:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$b;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$c;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$c;-><init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private f(I)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->s:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->w:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    const-string p1, "progress"

    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->v:Z

    return p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->t:Landroid/widget/TextView;

    return-object p0
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->z:Ljava/lang/String;

    const-string v1, "com.ifengyu.intercom.action.PRODUCT_MANUAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private x()V
    .locals 8

    const v0, 0x7f090419

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09041a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0801b3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->z:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f090303

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->s:Landroid/widget/ProgressBar;

    const v3, 0x7f09041d

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->t:Landroid/widget/TextView;

    sget-object v4, Lcom/ifengyu/intercom/i/p;->c:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->s:Landroid/widget/ProgressBar;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setScrollBarSize(I)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setHapticFeedbackEnabled(Z)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    new-instance v5, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$d;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$d;-><init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    new-instance v5, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$e;

    invoke-direct {v5, p0, v6}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$e;-><init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x1

    const/16 v6, 0x13

    if-lt v3, v6, :cond_0

    invoke-static {v5}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_0
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/webkit/WebSettings;

    const-string v6, "utf-8"

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/webkit/WebSettings;

    sget-object v6, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/content/Context;)Z

    move-result v3

    const/4 v6, -0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :goto_0
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/i/i;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_2
    const-string v3, ""

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->B:Ljava/lang/String;

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->z:Ljava/lang/String;

    const-string v7, "com.ifengyu.intercom.action.PRODUCT_MANUAL"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const v7, 0x7f1102e1

    if-eqz v5, :cond_8

    const v1, 0x7f1102ee

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "type"

    const-string v1, "dolphin"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v1

    const-string v4, "shark"

    const-string v5, "seal"

    if-eqz v1, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "https://m.ifengyu.com/resources/en/productseal.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "https://m.ifengyu.com/resources/en/productshark.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    goto/16 :goto_2

    :cond_4
    const-string v0, "https://m.ifengyu.com/resources/en/product.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "https://m.ifengyu.com/resources/productseal.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "https://m.ifengyu.com/resources/productshark.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    const-string v0, "https://m.ifengyu.com/resources/product.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->z:Ljava/lang/String;

    const-string v4, "com.ifengyu.intercom.action.USE_HELP"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f1102f0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->B:Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "https://m.ifengyu.com/resources/en/helper.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    const-string v0, "https://m.ifengyu.com/resources/helper2.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->z:Ljava/lang/String;

    const-string v4, "com.ifengyu.intercom.action.CONNECT_HELP"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f1100af

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->B:Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "https://m.ifengyu.com/resources/en/c_h.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    goto/16 :goto_2

    :cond_b
    const-string v0, "https://m.ifengyu.com/resources/c_h.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->z:Ljava/lang/String;

    const-string v4, "com.ifengyu.intercom.action.EXAM_IFNO_QUERY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7f1102df

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->B:Ljava/lang/String;

    const-string v0, "https://m.ifengyu.com/resources/exam.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->z:Ljava/lang/String;

    const-string v4, "com.ifengyu.intercom.action.MESSAGE_CENTER"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->B:Ljava/lang/String;

    const-string v0, "https://cms.ifengyu.com/m/"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto/16 :goto_2

    :cond_e
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->z:Ljava/lang/String;

    const-string v4, "com.ifengyu.intercom.action.NEW_MAN_GUIDE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f110054

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->B:Ljava/lang/String;

    const-string v0, "https://cms.ifengyu.com/m/list/42?isShowComment=0"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    goto :goto_2

    :cond_f
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->z:Ljava/lang/String;

    const-string v4, "com.ifengyu.intercom.action.SINGLE_ARTICLE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f1100a3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->B:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cms_single_article_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->A:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://cms.ifengyu.com/m/p/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_2

    :cond_10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->z:Ljava/lang/String;

    const-string v1, "com.ifengyu.intercom.action.ACTION_USER_POWER_CENTER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x7f11037f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->B:Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/intercom/i/c0;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "https://m.ifengyu.com/resources/en/userPower/powerList.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    goto :goto_1

    :cond_11
    const-string v0, "https://m.ifengyu.com/resources/userPower/powerList.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :cond_12
    :goto_2
    if-eqz v2, :cond_13

    const-string v0, "url"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WebViewActivity"

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->B:Ljava/lang/String;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :cond_13
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->y()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private y()V
    .locals 5

    const-string v0, "ISO-8859-1"

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->O()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.ifengyu.intercom.action.ACTION_USER_POWER_CENTER"

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUTH="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_AUTH="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->w()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->y:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :sswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    const-string v0, "https://m.ifengyu.com/resources/product.html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    const-string v1, "https://m.ifengyu.com/resources/en/product.html"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    const-string v1, "https://m.ifengyu.com/resources/productseal.html"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    const-string v1, "https://m.ifengyu.com/resources/en/productseal.html"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    const-string v1, "https://m.ifengyu.com/resources/productshark.html"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    const-string v1, "https://m.ifengyu.com/resources/en/productshark.html"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :cond_4
    :goto_1
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/view/b;

    invoke-direct {p1, p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/b;-><init>(Landroid/app/Activity;I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)V

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/b;->setOnclickListener(Lcom/ifengyu/intercom/ui/widget/view/b$a;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_2

    :sswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->w()V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090419 -> :sswitch_2
        0x7f09041a -> :sswitch_1
        0x7f0904d6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f0c005b

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0904d3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->x:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0c008b

    invoke-static {p0, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->y:Landroid/view/View;

    const v1, 0x7f0904d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->y:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->x:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->x:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->y:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->x()V

    return-void
.end method

.method protected onDestroy()V
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/webkit/WebView;

    :cond_1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/webkit/WebSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/webkit/WebSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method
