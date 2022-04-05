.class public Lcom/just/agentweb/MiddlewareWebClientBase;
.super Lcom/just/agentweb/WebViewClientDelegate;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mMiddleWrareWebClientBase:Lcom/just/agentweb/MiddlewareWebClientBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/just/agentweb/MiddlewareWebClientBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/MiddlewareWebClientBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/just/agentweb/WebViewClientDelegate;-><init>(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method protected constructor <init>(Landroid/webkit/WebViewClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/just/agentweb/WebViewClientDelegate;-><init>(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method constructor <init>(Lcom/just/agentweb/MiddlewareWebClientBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/just/agentweb/WebViewClientDelegate;-><init>(Landroid/webkit/WebViewClient;)V

    iput-object p1, p0, Lcom/just/agentweb/MiddlewareWebClientBase;->mMiddleWrareWebClientBase:Lcom/just/agentweb/MiddlewareWebClientBase;

    return-void
.end method


# virtual methods
.method final enq(Lcom/just/agentweb/MiddlewareWebClientBase;)Lcom/just/agentweb/MiddlewareWebClientBase;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/just/agentweb/MiddlewareWebClientBase;->setDelegate(Landroid/webkit/WebViewClient;)V

    iput-object p1, p0, Lcom/just/agentweb/MiddlewareWebClientBase;->mMiddleWrareWebClientBase:Lcom/just/agentweb/MiddlewareWebClientBase;

    return-object p1
.end method

.method final next()Lcom/just/agentweb/MiddlewareWebClientBase;
    .locals 1

    iget-object v0, p0, Lcom/just/agentweb/MiddlewareWebClientBase;->mMiddleWrareWebClientBase:Lcom/just/agentweb/MiddlewareWebClientBase;

    return-object v0
.end method

.method final setDelegate(Landroid/webkit/WebViewClient;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/just/agentweb/WebViewClientDelegate;->setDelegate(Landroid/webkit/WebViewClient;)V

    return-void
.end method
