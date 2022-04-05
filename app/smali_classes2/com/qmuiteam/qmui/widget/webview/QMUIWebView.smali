.class public Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;
.super Landroid/webkit/WebView;

# interfaces
.implements Lcom/qmuiteam/qmui/widget/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$b;,
        Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$a;
    }
.end annotation


# static fields
.field private static h:Z = false


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/reflect/Method;

.field private d:Landroid/graphics/Rect;

.field private e:Z

.field private f:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$a;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->e:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->g:Ljava/util/List;

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->e:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->g:Ljava/util/List;

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->e:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->g:Ljava/util/List;

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->b()V

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->h:Z

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->f:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$a;->a()V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mAwContents"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AwContents"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private b()V
    .locals 1

    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    new-instance v0, Lcom/qmuiteam/qmui/util/o;

    invoke-direct {v0, p0, p0}, Lcom/qmuiteam/qmui/util/o;-><init>(Landroid/view/ViewGroup;Lcom/qmuiteam/qmui/widget/c;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setDisplayCutoutSafeArea"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return-object v2

    :catch_0
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-ne v5, v1, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    aget-object v5, v5, v0

    const-class v6, Landroid/graphics/Rect;

    if-ne v5, v6, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mWebContents"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WebContentsImpl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private setStyleDisplayCutoutSafeArea(Landroid/graphics/Rect;)V
    .locals 9
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->h:Z

    if-nez v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-gt v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->d:Landroid/graphics/Rect;

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->d:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->a:Ljava/lang/Object;

    const-string v3, "setStyleDisplayCutoutSafeArea error: "

    const-string v4, "QMUIWebView"

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->b:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->c:Ljava/lang/reflect/Method;

    if-nez v2, :cond_6

    :cond_3
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const-string v6, "mProvider"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->a:Ljava/lang/Object;

    if-nez v2, :cond_4

    return-void

    :cond_4
    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->b:Ljava/lang/Object;

    if-nez v2, :cond_5

    return-void

    :cond_5
    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->c(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->c:Ljava/lang/reflect/Method;

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->a()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->c:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->b:Ljava/lang/Object;

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    sput-boolean v5, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->h:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayCutoutSafeArea speed time: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method protected a(F)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/graphics/Rect;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->e:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;)F

    move-result v0

    invoke-static {}, Lcom/qmuiteam/qmui/util/h;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Landroid/view/WindowInsets;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->f()I

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->h()I

    move-result v2

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->g()I

    move-result v3

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->e()I

    move-result p1

    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->b(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v2, v2

    div-float/2addr v2, v0

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->d(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->c(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->a(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {v4, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v4}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->setStyleDisplayCutoutSafeArea(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addCustomOnScrollChangeListener(Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$b;)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected b(F)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected c(F)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected d(F)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->c:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->S(Landroid/view/View;)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$b;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$b;->a(Landroid/webkit/WebView;IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeOnScrollChangeListener(Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$b;)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCallback(Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->f:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$a;

    return-void
.end method

.method public setCustomOnScrollChangeListener(Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$b;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->addCustomOnScrollChangeListener(Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$b;)V

    return-void
.end method

.method public setNeedDispatchSafeAreaInset(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->e:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->e:Z

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->M(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->S(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->setStyleDisplayCutoutSafeArea(Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "must use the instance of QMUIWebViewClient"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
