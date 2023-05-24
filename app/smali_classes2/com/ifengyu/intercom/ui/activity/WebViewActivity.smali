.class public Lcom/ifengyu/intercom/ui/activity/WebViewActivity;
.super Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;
.source "WebViewActivity.java"

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
.field private j:Landroid/webkit/WebView;

.field private k:Landroid/webkit/WebSettings;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/widget/TextView;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:I

.field private q:Landroid/widget/FrameLayout;

.field private r:Landroid/view/View;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;-><init>()V

    return-void
.end method

.method static synthetic F(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic G(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/view/View;

    return-object p0
.end method

.method static synthetic H(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic I(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic J(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic K(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->p:I

    return p1
.end method

.method static synthetic L(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->l:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic M(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->o:Z

    return p0
.end method

.method static synthetic N(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->o:Z

    return p1
.end method

.method static synthetic O(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->U(I)V

    return-void
.end method

.method static synthetic P(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->V(I)V

    return-void
.end method

.method static synthetic R(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method private S()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->s:Ljava/lang/String;

    const-string v1, "com.ifengyu.intercom.action.PRODUCT_MANUAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private T()V
    .locals 8

    const v0, 0x7f09048e

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09048f

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0801db

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->s:Ljava/lang/String;

    .line 7
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f090365

    .line 8
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->l:Landroid/widget/ProgressBar;

    const v3, 0x7f090491

    .line 9
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->m:Landroid/widget/TextView;

    .line 10
    sget-object v4, Lcom/ifengyu/intercom/j/a;->a:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->l:Landroid/widget/ProgressBar;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 12
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setScrollBarSize(I)V

    .line 13
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setHapticFeedbackEnabled(Z)V

    .line 14
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 15
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 16
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    .line 17
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    new-instance v5, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$d;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$d;-><init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 18
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    new-instance v5, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$e;

    invoke-direct {v5, p0, v6}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$e;-><init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const/4 v3, 0x1

    .line 19
    invoke-static {v3}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 20
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    iput-object v5, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->k:Landroid/webkit/WebSettings;

    const-string v6, "utf-8"

    .line 21
    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 22
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v5, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 23
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v5, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 24
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v5, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 25
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v5, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 26
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v5, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 27
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v5, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 28
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->k:Landroid/webkit/WebSettings;

    sget-object v6, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/ifengyu/intercom/p/b0;->z(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_0

    .line 30
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    .line 31
    :cond_0
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v5, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 32
    :goto_0
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v5, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 33
    invoke-static {}, Lcom/ifengyu/intercom/p/m;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_1
    const-string v3, ""

    .line 35
    iput-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    .line 36
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->s:Ljava/lang/String;

    const-string v7, "com.ifengyu.intercom.action.PRODUCT_MANUAL"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const v7, 0x7f110390

    if-eqz v5, :cond_7

    const v1, 0x7f11039d

    .line 37
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "type"

    const-string v1, "dolphin"

    .line 39
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->c()Z

    move-result v1

    const-string v4, "shark"

    const-string v5, "seal"

    if-eqz v1, :cond_4

    .line 41
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "https://m.ifengyu.com/resourcesDev/resources/en/productseal.html"

    .line 42
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    goto/16 :goto_2

    .line 43
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "https://m.ifengyu.com/resourcesDev/resources/en/productshark.html"

    .line 44
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    const-string v0, "https://m.ifengyu.com/resourcesDev/resources/en/product.html"

    .line 45
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    goto/16 :goto_2

    .line 46
    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "https://m.ifengyu.com/resourcesDev/resources/productseal.html"

    .line 47
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    goto/16 :goto_2

    .line 48
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "https://m.ifengyu.com/resourcesDev/resources/productshark.html"

    .line 49
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    const-string v0, "https://m.ifengyu.com/resourcesDev/resources/product.html"

    .line 50
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    goto/16 :goto_2

    .line 51
    :cond_7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->s:Ljava/lang/String;

    const-string v4, "com.ifengyu.intercom.action.USE_HELP"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f11039f

    .line 52
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "https://m.ifengyu.com/resourcesDev/resources/en/helper.html"

    .line 54
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    const-string v0, "https://m.ifengyu.com/resourcesDev/resources/helper2.html"

    .line 55
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    goto/16 :goto_2

    .line 56
    :cond_9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->s:Ljava/lang/String;

    const-string v4, "com.ifengyu.intercom.action.CONNECT_HELP"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f1100e7

    .line 57
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "https://m.ifengyu.com/resourcesDev/resources/en/c_h.html"

    .line 59
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    const-string v0, "https://m.ifengyu.com/resourcesDev/resources/c_h.html"

    .line 60
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    goto/16 :goto_2

    .line 61
    :cond_b
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->s:Ljava/lang/String;

    const-string v4, "com.ifengyu.intercom.action.EXAM_IFNO_QUERY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f11038e

    .line 62
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    const-string v0, "https://m.ifengyu.com/resourcesDev/resources/exam.html"

    .line 63
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    goto/16 :goto_2

    .line 64
    :cond_c
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->s:Ljava/lang/String;

    const-string v4, "com.ifengyu.intercom.action.MESSAGE_CENTER"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 65
    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    const-string v0, "https://cms.ifengyu.com/m/"

    .line 66
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto/16 :goto_2

    .line 68
    :cond_d
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->s:Ljava/lang/String;

    const-string v4, "com.ifengyu.intercom.action.NEW_MAN_GUIDE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f110061

    .line 69
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    const-string v0, "https://cms.ifengyu.com/m/list/42?isShowComment=0"

    .line 70
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    goto :goto_2

    .line 71
    :cond_e
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->s:Ljava/lang/String;

    const-string v4, "com.ifengyu.intercom.action.SINGLE_ARTICLE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f1100dc

    .line 72
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    .line 73
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cms_single_article_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->t:I

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://cms.ifengyu.com/m/p/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_2

    .line 76
    :cond_f
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->s:Ljava/lang/String;

    const-string v1, "com.ifengyu.intercom.action.ACTION_USER_POWER_CENTER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0x7f11042a

    .line 77
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/ifengyu/intercom/p/b0;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "https://m.ifengyu.com/resourcesDev/resources/en/userPower/powerList.html"

    .line 79
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    goto :goto_1

    :cond_10
    const-string v0, "https://m.ifengyu.com/resourcesDev/resources/userPower/powerList.html"

    .line 80
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    .line 81
    :goto_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :cond_11
    :goto_2
    if-eqz v2, :cond_12

    const-string v0, "url"

    .line 82
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WebViewActivity"

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 85
    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->k:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 88
    :cond_12
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->W()V

    .line 89
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private U(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->l:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance v1, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$b;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    new-instance p1, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$c;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$c;-><init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private V(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->l:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->p:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    const-string p1, "progress"

    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private W()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 3
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->P()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->Q()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ":"

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->s:Ljava/lang/String;

    const-string v3, "com.ifengyu.intercom.action.ACTION_USER_POWER_CENTER"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ifengyu/library/account/UserCache;->getUserInfo()Lcom/ifengyu/library/account/UserInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/ifengyu/library/account/UserInfo;->tokens:Lcom/ifengyu/library/account/UserInfo$Tokens;

    iget-object v3, v3, Lcom/ifengyu/library/account/UserInfo$Tokens;->accessToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 11
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_AUTH="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->S()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 5
    :sswitch_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    const-string v0, "https://m.ifengyu.com/resourcesDev/resources/product.html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    const-string v1, "https://m.ifengyu.com/resourcesDev/resources/en/product.html"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    const-string v1, "https://m.ifengyu.com/resourcesDev/resources/productseal.html"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    const-string v1, "https://m.ifengyu.com/resourcesDev/resources/en/productseal.html"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    const-string v1, "https://m.ifengyu.com/resourcesDev/resources/productshark.html"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->n:Ljava/lang/String;

    const-string v1, "https://m.ifengyu.com/resourcesDev/resources/en/productshark.html"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 8
    :cond_4
    :goto_1
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/view/b;

    invoke-direct {p1, p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/b;-><init>(Landroid/app/Activity;I)V

    .line 9
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)V

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/b;->setOnclickListener(Lcom/ifengyu/intercom/ui/widget/view/b$a;)V

    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 11
    :sswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->S()V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09048e -> :sswitch_2
        0x7f09048f -> :sswitch_1
        0x7f09054a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0040

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090547

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/widget/FrameLayout;

    .line 4
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    .line 5
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0c0077

    .line 6
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/view/View;

    const v1, 0x7f09054a

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->setContentView(Landroid/view/View;)V

    .line 12
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->T()V

    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    .line 2
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->j:Landroid/webkit/WebView;

    .line 9
    :cond_1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->k:Landroid/webkit/WebSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->k:Landroid/webkit/WebSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method
