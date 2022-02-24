.class public Lcom/just/agentweb/DefaultWebLifeCycleImpl;
.super Ljava/lang/Object;
.source "DefaultWebLifeCycleImpl.java"

# interfaces
.implements Lcom/just/agentweb/WebLifeCycle;


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/just/agentweb/DefaultWebLifeCycleImpl;->mWebView:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebLifeCycleImpl;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebLifeCycleImpl;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/just/agentweb/AgentWebUtils;->clearWebView(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebLifeCycleImpl;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebLifeCycleImpl;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebLifeCycleImpl;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/just/agentweb/DefaultWebLifeCycleImpl;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    :cond_1
    return-void
.end method
