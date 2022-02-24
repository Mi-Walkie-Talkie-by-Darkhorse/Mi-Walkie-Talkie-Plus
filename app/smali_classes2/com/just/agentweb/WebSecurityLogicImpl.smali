.class public Lcom/just/agentweb/WebSecurityLogicImpl;
.super Ljava/lang/Object;
.source "WebSecurityLogicImpl.java"

# interfaces
.implements Lcom/just/agentweb/WebSecurityCheckLogic;


# instance fields
.field private TAG:Ljava/lang/String;

.field private webviewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/just/agentweb/WebSecurityLogicImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/just/agentweb/WebSecurityLogicImpl;->TAG:Ljava/lang/String;

    .line 3
    iput p1, p0, Lcom/just/agentweb/WebSecurityLogicImpl;->webviewType:I

    return-void
.end method

.method public static getInstance(I)Lcom/just/agentweb/WebSecurityLogicImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/just/agentweb/WebSecurityLogicImpl;

    invoke-direct {v0, p0}, Lcom/just/agentweb/WebSecurityLogicImpl;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public dealHoneyComb(Landroid/webkit/WebView;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-gt v1, v0, :cond_1

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "searchBoxJavaBridge_"

    .line 2
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibility"

    .line 3
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    .line 4
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dealJsInterface(La/b/a;Lcom/just/agentweb/AgentWeb$SecurityType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/just/agentweb/AgentWeb$SecurityType;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/just/agentweb/AgentWeb$SecurityType;->STRICT_CHECK:Lcom/just/agentweb/AgentWeb$SecurityType;

    if-ne p2, v0, :cond_0

    iget p2, p0, Lcom/just/agentweb/WebSecurityLogicImpl;->webviewType:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-ge p2, v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/just/agentweb/WebSecurityLogicImpl;->TAG:Ljava/lang/String;

    const-string v0, "Give up all inject objects"

    invoke-static {p2, v0}, Lcom/just/agentweb/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, La/b/g;->clear()V

    .line 4
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_0
    return-void
.end method
