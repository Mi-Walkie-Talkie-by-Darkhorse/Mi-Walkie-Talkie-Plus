.class public Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;
.super Landroid/app/Activity;
.source "WeiboSdkBrowser.java"

# interfaces
.implements Lcom/sina/weibo/sdk/component/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/webkit/WebView;

.field private j:Lcom/sina/weibo/sdk/component/view/LoadingBar;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/Button;

.field private m:Ljava/lang/Boolean;

.field private n:Lcom/sina/weibo/sdk/component/d;

.field private o:Lcom/sina/weibo/sdk/component/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->m:Ljava/lang/Boolean;

    return-void
.end method

.method private a(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/component/d;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->m:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const-string v0, "key_launcher"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/component/BrowserLauncher;

    sget-object v2, Lcom/sina/weibo/sdk/component/BrowserLauncher;->a:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/sina/weibo/sdk/component/a;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/component/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/component/a;->c(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Lcom/sina/weibo/sdk/component/a;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Lcom/sina/weibo/sdk/component/BrowserLauncher;->b:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    if-ne v0, v2, :cond_1

    new-instance v0, Lcom/sina/weibo/sdk/component/f;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/component/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/component/f;->c(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Lcom/sina/weibo/sdk/component/f;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sina/weibo/sdk/component/BrowserLauncher;->c:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    if-ne v0, v2, :cond_2

    new-instance v0, Lcom/sina/weibo/sdk/component/k;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/component/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/component/k;->c(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Lcom/sina/weibo/sdk/component/k;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sina/weibo/sdk/component/BrowserLauncher;->e:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->m:Ljava/lang/Boolean;

    new-instance v0, Lcom/sina/weibo/sdk/component/e;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/component/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/component/e;->c(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Lcom/sina/weibo/sdk/component/e;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Lcom/sina/weibo/sdk/component/view/LoadingBar;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->j:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/h;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/component/h;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/sina/weibo/sdk/component/h;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p2}, Lcom/sina/weibo/sdk/component/h;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->d:Z

    return-void
.end method

.method private a(Lcom/sina/weibo/sdk/component/a;)V
    .locals 1

    new-instance v0, Lcom/sina/weibo/sdk/component/b;

    invoke-direct {v0, p0, p1}, Lcom/sina/weibo/sdk/component/b;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/component/a;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->o:Lcom/sina/weibo/sdk/component/j;

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->o:Lcom/sina/weibo/sdk/component/j;

    invoke-virtual {v0, p0}, Lcom/sina/weibo/sdk/component/j;->a(Lcom/sina/weibo/sdk/component/c;)V

    return-void
.end method

.method private a(Lcom/sina/weibo/sdk/component/e;)V
    .locals 1

    new-instance v0, Lcom/sina/weibo/sdk/component/i;

    invoke-direct {v0, p0, p1}, Lcom/sina/weibo/sdk/component/i;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/component/e;)V

    invoke-virtual {v0, p0}, Lcom/sina/weibo/sdk/component/i;->a(Lcom/sina/weibo/sdk/component/c;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->o:Lcom/sina/weibo/sdk/component/j;

    return-void
.end method

.method private a(Lcom/sina/weibo/sdk/component/f;)V
    .locals 1

    new-instance v0, Lcom/sina/weibo/sdk/component/g;

    invoke-direct {v0, p0, p1}, Lcom/sina/weibo/sdk/component/g;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/component/f;)V

    invoke-virtual {v0, p0}, Lcom/sina/weibo/sdk/component/g;->a(Lcom/sina/weibo/sdk/component/c;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->o:Lcom/sina/weibo/sdk/component/j;

    return-void
.end method

.method private a(Lcom/sina/weibo/sdk/component/k;)V
    .locals 1

    new-instance v0, Lcom/sina/weibo/sdk/component/l;

    invoke-direct {v0, p0, p1}, Lcom/sina/weibo/sdk/component/l;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/component/k;)V

    invoke-virtual {v0, p0}, Lcom/sina/weibo/sdk/component/l;->a(Lcom/sina/weibo/sdk/component/c;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->o:Lcom/sina/weibo/sdk/component/j;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/component/d;

    move-result-object v1

    iput-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->n:Lcom/sina/weibo/sdk/component/d;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->n:Lcom/sina/weibo/sdk/component/d;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->n:Lcom/sina/weibo/sdk/component/d;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/d;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->n:Lcom/sina/weibo/sdk/component/d;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/d;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    const-string v1, "key_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_specify_title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LOAD URL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/sina/weibo/sdk/component/d;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/component/d;->f()Lcom/sina/weibo/sdk/component/BrowserLauncher;

    move-result-object v0

    sget-object v1, Lcom/sina/weibo/sdk/component/BrowserLauncher;->b:Lcom/sina/weibo/sdk/component/BrowserLauncher;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sinaweibo"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->f:Z

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->f:Z

    return-void
.end method

.method static synthetic b(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->d:Z

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "sinaweibo"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->e:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 6

    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a:Ljava/lang/String;

    const-string v1, "Enter startShare()............"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->n:Lcom/sina/weibo/sdk/component/d;

    check-cast v0, Lcom/sina/weibo/sdk/component/f;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/f;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a:Ljava/lang/String;

    const-string v2, "loadUrl hasImage............"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sina/weibo/sdk/net/f;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/net/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/f;->a(Lcom/sina/weibo/sdk/net/f;)Lcom/sina/weibo/sdk/net/f;

    move-result-object v1

    new-instance v2, Lcom/sina/weibo/sdk/net/a;

    invoke-direct {v2, p0}, Lcom/sina/weibo/sdk/net/a;-><init>(Landroid/content/Context;)V

    const-string v3, "http://service.weibo.com/share/mobilesdk_uppic.php"

    const-string v4, "POST"

    new-instance v5, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$1;

    invoke-direct {v5, p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$1;-><init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Lcom/sina/weibo/sdk/component/f;)V

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/sina/weibo/sdk/net/a;->a(Ljava/lang/String;Lcom/sina/weibo/sdk/net/f;Ljava/lang/String;Lcom/sina/weibo/sdk/net/d;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->m:Ljava/lang/Boolean;

    return-object v0
.end method

.method private d()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->n:Lcom/sina/weibo/sdk/component/d;

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Lcom/sina/weibo/sdk/component/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->o:Lcom/sina/weibo/sdk/component/j;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    new-instance v1, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$a;-><init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$2;

    invoke-direct {v1, p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$2;-><init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic e(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V
    .locals 0

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->f()V

    return-void
.end method

.method static synthetic f(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Lcom/sina/weibo/sdk/component/d;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->n:Lcom/sina/weibo/sdk/component/d;

    return-object v0
.end method

.method private f()V
    .locals 2

    const-string v0, ""

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->c:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private g()V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "weibosdk_common_shadow_top.9.png"

    invoke-static {p0, v4}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Lcom/sina/weibo/sdk/component/view/LoadingBar;

    invoke-direct {v4, p0}, Lcom/sina/weibo/sdk/component/view/LoadingBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->j:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->j:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->j:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v10}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->j:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    invoke-virtual {v5, v4}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->j:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    invoke-virtual {v2, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v3, "weibosdk_empty_failed.png"

    invoke-static {p0, v3}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x8

    invoke-static {p0, v4}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    const v3, -0x424243

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v9, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "A network error occurs, please tap the button to reload"

    const-string v4, "\u7f51\u7edc\u51fa\u9519\u5566\uff0c\u8bf7\u70b9\u51fb\u6309\u94ae\u91cd\u65b0\u52a0\u8f7d"

    const-string v5, "\u7db2\u8def\u51fa\u932f\u5566\uff0c\u8acb\u9ede\u64ca\u6309\u9215\u91cd\u65b0\u8f09\u5165"

    invoke-static {p0, v3, v4, v5}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->l:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->l:Landroid/widget/Button;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setGravity(I)V

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->l:Landroid/widget/Button;

    const v3, -0x878788

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->l:Landroid/widget/Button;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v9, v3}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->l:Landroid/widget/Button;

    const-string v3, "channel_data_error"

    const-string v4, "\u91cd\u65b0\u52a0\u8f7d"

    const-string v5, "\u91cd\u65b0\u8f09\u5165"

    invoke-static {p0, v3, v4, v5}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->l:Landroid/widget/Button;

    const-string v3, "weibosdk_common_button_alpha.9.png"

    const-string v4, "weibosdk_common_button_alpha_highlighted.9.png"

    invoke-static {p0, v3, v4}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x8e

    invoke-static {p0, v3}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0x2e

    invoke-static {p0, v4}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-static {p0, v3}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->l:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->l:Landroid/widget/Button;

    new-instance v3, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$3;

    invoke-direct {v3, p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser$3;-><init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->l:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->e()V

    return-void
.end method

.method private h()Landroid/view/View;
    .locals 9

    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x2

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x2d

    invoke-static {p0, v3}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "weibosdk_navigationbar_background.9.png"

    invoke-static {p0, v1}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->g:Landroid/widget/TextView;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v1, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->g:Landroid/widget/TextView;

    const/16 v2, -0x7e00

    const v3, 0x66ff8200

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/f;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->g:Landroid/widget/TextView;

    const-string v2, "Close"

    const-string v3, "\u5173\u95ed"

    const-string v4, "\u5173\u95ed"

    invoke-static {p0, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {p0, v8}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-static {p0, v8}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    const v2, -0xadadae

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    const/16 v2, 0xa0

    invoke-static {p0, v2}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private i()V
    .locals 2

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->f()V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->j:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->setVisibility(I)V

    return-void
.end method

.method private j()V
    .locals 4

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->h:Landroid/widget/TextView;

    const-string v1, "Loading...."

    const-string v2, "\u52a0\u8f7d\u4e2d...."

    const-string v3, "\u8f09\u5165\u4e2d...."

    invoke-static {p0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->j:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->setVisibility(I)V

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-boolean v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->j()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->i()V

    goto :goto_0
.end method

.method public a(Landroid/webkit/WebView;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "removeJavascriptInterface"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "searchBoxJavaBridge_"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/utils/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedError: errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", description = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failingUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/a;)V
    .locals 2

    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a:Ljava/lang/String;

    const-string v1, "onReceivedSslErrorCallBack........."

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageStarted URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->e:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldOverrideUrlLoading URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->k()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->f:Z

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->l()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->g()V

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->d()V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->n:Lcom/sina/weibo/sdk/component/d;

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Lcom/sina/weibo/sdk/component/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->c()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/sina/weibo/sdk/utils/e;->d(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->n:Lcom/sina/weibo/sdk/component/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->n:Lcom/sina/weibo/sdk/component/d;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/sina/weibo/sdk/component/d;->a(Landroid/app/Activity;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
