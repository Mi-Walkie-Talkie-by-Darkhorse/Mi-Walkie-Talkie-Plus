.class public Lcom/qmuiteam/qmui/util/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static b:Landroid/graphics/Rect;

.field private static c:Landroid/graphics/Rect;

.field private static d:Landroid/graphics/Rect;

.field private static e:Landroid/graphics/Rect;

.field private static f:[I

.field private static g:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 2

    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/d;->h(Landroid/content/Context;)Z

    move-result v0

    sget-object v1, Lcom/qmuiteam/qmui/util/h;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/qmuiteam/qmui/util/h;->a()V

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/qmuiteam/qmui/util/h;->g:Ljava/lang/Boolean;

    :cond_1
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->i(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/qmuiteam/qmui/util/h;->c:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->h(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    sput-object p0, Lcom/qmuiteam/qmui/util/h;->c:Landroid/graphics/Rect;

    :cond_2
    sget-object p0, Lcom/qmuiteam/qmui/util/h;->c:Landroid/graphics/Rect;

    return-object p0

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/qmuiteam/qmui/util/h;->d:Landroid/graphics/Rect;

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->f(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    sput-object p0, Lcom/qmuiteam/qmui/util/h;->d:Landroid/graphics/Rect;

    :cond_4
    sget-object p0, Lcom/qmuiteam/qmui/util/h;->d:Landroid/graphics/Rect;

    return-object p0

    :cond_5
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/qmuiteam/qmui/util/h;->e:Landroid/graphics/Rect;

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->g(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    sput-object p0, Lcom/qmuiteam/qmui/util/h;->e:Landroid/graphics/Rect;

    :cond_6
    sget-object p0, Lcom/qmuiteam/qmui/util/h;->e:Landroid/graphics/Rect;

    return-object p0

    :cond_7
    sget-object v0, Lcom/qmuiteam/qmui/util/h;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_8

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->e(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    sput-object p0, Lcom/qmuiteam/qmui/util/h;->b:Landroid/graphics/Rect;

    :cond_8
    sget-object p0, Lcom/qmuiteam/qmui/util/h;->b:Landroid/graphics/Rect;

    return-object p0
.end method

.method private static a()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/qmuiteam/qmui/util/h;->c:Landroid/graphics/Rect;

    sput-object v0, Lcom/qmuiteam/qmui/util/h;->e:Landroid/graphics/Rect;

    return-void
.end method

.method private static a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    return-void
.end method

.method private static a(Landroid/view/View;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/qmuiteam/qmui/util/h;->a:Ljava/lang/Boolean;

    return v1

    :cond_1
    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 1

    const/16 v0, 0x1b

    invoke-static {p0, v0}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/View;)I
    .locals 1

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->d(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public static b()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "notch_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/d;->g(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static c(Landroid/view/View;)I
    .locals 1

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->d(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method private static d(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    invoke-static {}, Lcom/qmuiteam/qmui/util/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, v0}, Lcom/qmuiteam/qmui/util/h;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->a(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)[I
    .locals 4

    const-string v0, "QMUINotchHelper"

    sget-object v1, Lcom/qmuiteam/qmui/util/h;->f:[I

    if-nez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/qmuiteam/qmui/util/h;->f:[I

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "getNotchSize"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    sput-object p0, Lcom/qmuiteam/qmui/util/h;->f:[I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "getNotchSizeInHuawei Exception"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p0, "getNotchSizeInHuawei NoSuchMethodException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string p0, "getNotchSizeInHuawei ClassNotFoundException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-object p0, Lcom/qmuiteam/qmui/util/h;->f:[I

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static e(Landroid/view/View;)I
    .locals 1

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->d(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method private static e(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->l()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->b(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/k;->a(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->d(Landroid/content/Context;)[I

    move-result-object p0

    const/4 v1, 0x1

    aget p0, p0, v1

    iput p0, v0, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->c(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static f(Landroid/view/View;)I
    .locals 1

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->g(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->d(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method private static f(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->l()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput v2, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->b(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/k;->a(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->d(Landroid/content/Context;)[I

    move-result-object p0

    iput v2, v0, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x1

    aget p0, p0, v1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->c(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static g(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->l()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->b(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/k;->a(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/qmuiteam/qmui/util/h;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->d(Landroid/content/Context;)[I

    move-result-object p0

    const/4 v1, 0x1

    aget p0, p0, v1

    iput p0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iput v2, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->c(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static g(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Lcom/qmuiteam/qmui/util/h;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/qmuiteam/qmui/util/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->a(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->j(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/qmuiteam/qmui/util/h;->a:Ljava/lang/Boolean;

    :cond_1
    sget-object p0, Lcom/qmuiteam/qmui/util/h;->a:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static h(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->l()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->b(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/k;->a(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/qmuiteam/qmui/util/h;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->d(Landroid/content/Context;)[I

    move-result-object p0

    const/4 v1, 0x1

    aget p0, p0, v1

    iput p0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_2
    iput v2, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->c(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static h(Landroid/view/View;)Z
    .locals 1

    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->g(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static i(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->k(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->m(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->l(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_2
    invoke-static {}, Lcom/qmuiteam/qmui/util/c;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/qmuiteam/qmui/util/h;->n(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "QMUINotchHelper"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v2, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v2, "hasNotchInScreen"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "hasNotchInHuawei Exception"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p0, "hasNotchInHuawei NoSuchMethodException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string p0, "hasNotchInHuawei ClassNotFoundException"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 7

    const-string v0, "QMUINotchHelper"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v2, "android.util.FtFeature"

    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "isFeatureSupport"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v4, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    const-string p0, "hasNotchInVivo Exception"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    const-string p0, "hasNotchInVivo ClassNotFoundException"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return v1
.end method

.method public static n(Landroid/content/Context;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInt"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, p0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ro.miui.notch"

    aput-object v3, v2, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v5, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return p0
.end method
