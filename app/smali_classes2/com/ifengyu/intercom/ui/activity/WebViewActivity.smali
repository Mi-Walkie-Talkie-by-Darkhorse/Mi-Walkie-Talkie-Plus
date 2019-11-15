.class public Lcom/ifengyu/intercom/ui/activity/WebViewActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/activity/WebViewActivity$b;,
        Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/webkit/WebSettings;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/TextView;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:I

.field private t:Landroid/widget/FrameLayout;

.field private u:Landroid/view/View;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->s:I

    return p1
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    return-object p1
.end method

.method private varargs a(Lokhttp3/OkHttpClient$Builder;[Ljava/io/InputStream;)Lokhttp3/OkHttpClient$Builder;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    const-string v1, "PKCS12"

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    array-length v5, p2

    move v1, v0

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, p2, v0

    add-int/lit8 v2, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    :try_start_2
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v2, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/internal/platform/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-object p1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private a(I)V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->c:Landroid/widget/ProgressBar;

    const-string v1, "progress"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->s:I

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private a(Landroid/webkit/SslErrorHandler;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/InputStream;

    const/4 v2, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/MiTalkiApp;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "Certificate.cer"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a(Lokhttp3/OkHttpClient$Builder;[Ljava/io/InputStream;)Lokhttp3/OkHttpClient$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$2;-><init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Landroid/webkit/SslErrorHandler;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Landroid/webkit/SslErrorHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a(Landroid/webkit/SslErrorHandler;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method private b(I)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->c:Landroid/widget/ProgressBar;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$3;-><init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$4;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$4;-><init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->c:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private c()V
    .locals 10

    const/4 v9, 0x0

    const v8, 0x7f0901cd

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10015b

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020185

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->v:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const v1, 0x7f10019b

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->c:Landroid/widget/ProgressBar;

    const v1, 0x7f100244

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->d:Landroid/widget/TextView;

    sget-object v4, Lcom/ifengyu/intercom/b/l;->d:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->c:Landroid/widget/ProgressBar;

    const/16 v4, 0x64

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setScrollBarSize(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setHapticFeedbackEnabled(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    new-instance v4, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;

    invoke-direct {v4, p0, v9}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Lcom/ifengyu/intercom/ui/activity/WebViewActivity$1;)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    new-instance v4, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$b;

    invoke-direct {v4, p0, v9}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;Lcom/ifengyu/intercom/ui/activity/WebViewActivity$1;)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v1, v4, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-static {v6}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b:Landroid/webkit/WebSettings;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b:Landroid/webkit/WebSettings;

    const-string v4, "utf-8"

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b:Landroid/webkit/WebSettings;

    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/b/v;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/b/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_1
    const-string v1, ""

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->x:Ljava/lang/String;

    const-string v1, "com.ifengyu.intercom.action.PRODUCT_MANUAL"

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->v:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7f0901da

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "type"

    const-string v1, "dolphin"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "seal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "https://m.ifengyu.com/resources/en/productseal.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    const-string v0, "url"

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v8}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :cond_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->d()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "shark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "https://m.ifengyu.com/resources/en/productshark.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v0, "https://m.ifengyu.com/resources/en/product.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v1, "seal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "https://m.ifengyu.com/resources/productseal.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v1, "shark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "https://m.ifengyu.com/resources/productshark.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const-string v0, "https://m.ifengyu.com/resources/product.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    goto :goto_1

    :cond_a
    const-string v0, "com.ifengyu.intercom.action.USE_HELP"

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f0901dc

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->x:Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "https://m.ifengyu.com/resources/en/helper.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const-string v0, "https://m.ifengyu.com/resources/helper2.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    const-string v0, "com.ifengyu.intercom.action.AGREEMENT_AND_PRIVACY"

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f090251

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->x:Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "https://m.ifengyu.com/resources/en/a_p.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    const-string v0, "https://m.ifengyu.com/resources/a_p.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    const-string v0, "com.ifengyu.intercom.action.CONNECT_HELP"

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f090087

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->x:Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "https://m.ifengyu.com/resources/en/c_h.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    goto/16 :goto_1

    :cond_f
    const-string v0, "https://m.ifengyu.com/resources/c_h.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    goto/16 :goto_1

    :cond_10
    const-string v0, "com.ifengyu.intercom.action.EXAM_IFNO_QUERY"

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0x7f0901cb

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->x:Ljava/lang/String;

    const-string v0, "https://m.ifengyu.com/resources/exam.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    goto/16 :goto_1

    :cond_11
    const-string v0, "com.ifengyu.intercom.action.MESSAGE_CENTER"

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, v8}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->x:Ljava/lang/String;

    sget-object v0, Lcom/ifengyu/intercom/network/d;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto/16 :goto_1

    :cond_12
    const-string v0, "com.ifengyu.intercom.action.NEW_MAN_GUIDE"

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->x:Ljava/lang/String;

    sget-object v0, Lcom/ifengyu/intercom/network/d;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    goto/16 :goto_1

    :cond_13
    const-string v0, "com.ifengyu.intercom.action.SINGLE_ARTICLE"

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const v0, 0x7f09007b

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->x:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cms_single_article_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->w:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ifengyu/intercom/network/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto/16 :goto_1

    :cond_14
    const-string v0, "com.ifengyu.intercom.action.ACTION_USER_POWER_CENTER"

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f090250

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->x:Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/intercom/b/v;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "https://m.ifengyu.com/resources/en/userPower/powerList.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto/16 :goto_1

    :cond_15
    const-string v0, "https://m.ifengyu.com/resources/userPower/powerList.html"

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    goto :goto_2
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a(I)V

    return-void
.end method

.method private d()V
    .locals 5

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->L()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.ifengyu.intercom.action.ACTION_USER_POWER_CENTER"

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUTH="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    const-string v3, "ISO-8859-1"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_AUTH="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->r:Z

    return v0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .locals 2

    const-string v0, "com.ifengyu.intercom.action.PRODUCT_MANUAL"

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->e()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->e()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    const-string v2, "https://m.ifengyu.com/resources/product.html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    const-string v2, "https://m.ifengyu.com/resources/en/product.html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    new-instance v1, Lcom/ifengyu/intercom/ui/widget/view/c;

    invoke-direct {v1, p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/c;-><init>(Landroid/app/Activity;I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity$1;-><init>(Lcom/ifengyu/intercom/ui/activity/WebViewActivity;)V

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/widget/view/c;->setOnclickListener(Lcom/ifengyu/intercom/ui/widget/view/c$a;)V

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/view/c;->show()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    const-string v2, "https://m.ifengyu.com/resources/productseal.html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    const-string v2, "https://m.ifengyu.com/resources/en/productseal.html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    const-string v2, "https://m.ifengyu.com/resources/productshark.html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->q:Ljava/lang/String;

    const-string v2, "https://m.ifengyu.com/resources/en/productshark.html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c3 -> :sswitch_0
        0x7f10015b -> :sswitch_1
        0x7f100365 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040052

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f10019a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->t:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f04011c

    invoke-static {p0, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Landroid/view/View;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Landroid/view/View;

    const v2, 0x7f100365

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->t:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->t:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->u:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->c()V

    return-void
.end method

.method protected onDestroy()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->a:Landroid/webkit/WebView;

    :cond_1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onPause()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b:Landroid/webkit/WebSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onResume()V

    const-string v0, "WebViewActivity"

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/WebViewActivity;->b:Landroid/webkit/WebSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method
