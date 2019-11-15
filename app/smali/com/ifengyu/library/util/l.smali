.class public Lcom/ifengyu/library/util/l;
.super Ljava/lang/Object;
.source "UIUtils.java"


# static fields
.field public static a:I

.field private static final b:Ljava/lang/String;

.field private static c:I

.field private static d:Landroid/widget/Toast;

.field private static final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static f:I

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/ifengyu/library/util/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/library/util/l;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/ifengyu/library/util/l;->c:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/ifengyu/library/util/l;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(F)I
    .locals 2

    invoke-static {}, Lcom/ifengyu/library/util/l;->b()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->l()Lcom/ifengyu/library/base/BaseApp;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 3

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v1
.end method

.method static synthetic a(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    sput-object p0, Lcom/ifengyu/library/util/l;->d:Landroid/widget/Toast;

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/ifengyu/library/util/l;->b()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;)V
    .locals 4
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    invoke-static {}, Lcom/ifengyu/library/util/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/library/util/l;->d()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {}, Lcom/ifengyu/library/util/l;->d()I

    move-result v0

    invoke-virtual {p0, v3, v0, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Z)V
    .locals 2

    new-instance v0, Lcom/ifengyu/library/util/l$1;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/library/util/l$1;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->n()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Lcom/ifengyu/library/util/l;->k()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ifengyu/library/util/l;->l()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static b(F)I
    .locals 2

    invoke-static {}, Lcom/ifengyu/library/util/l;->b()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static b(I)I
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    invoke-static {}, Lcom/ifengyu/library/util/l;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static b()Landroid/content/res/Resources;
    .locals 1

    invoke-static {}, Lcom/ifengyu/library/util/l;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ifengyu/library/util/l;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(I)V
    .locals 2
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/ifengyu/library/util/l;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public static d()I
    .locals 5

    sget v0, Lcom/ifengyu/library/util/l;->c:I

    if-lez v0, :cond_0

    sget v0, Lcom/ifengyu/library/util/l;->c:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/ifengyu/library/util/l;->b()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/ifengyu/library/util/l;->b()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/ifengyu/library/util/l;->c:I

    sget-object v0, Lcom/ifengyu/library/util/l;->b:Ljava/lang/String;

    const-string v1, "Get status bar height %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/ifengyu/library/util/l;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget v0, Lcom/ifengyu/library/util/l;->c:I

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "status_bar_height"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/ifengyu/library/util/l;->b()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/ifengyu/library/util/l;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v0

    goto :goto_0
.end method

.method public static e()I
    .locals 1

    sget v0, Lcom/ifengyu/library/util/l;->f:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/library/util/l;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/ifengyu/library/util/l;->f:I

    :cond_0
    sget v0, Lcom/ifengyu/library/util/l;->f:I

    return v0
.end method

.method public static f()I
    .locals 1

    sget v0, Lcom/ifengyu/library/util/l;->g:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/library/util/l;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/ifengyu/library/util/l;->g:I

    :cond_0
    sget v0, Lcom/ifengyu/library/util/l;->g:I

    return v0
.end method

.method public static g()I
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/ifengyu/library/util/l;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    const v2, 0xffffff

    if-le v0, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    sget-object v2, Lcom/ifengyu/library/util/l;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static h()I
    .locals 2

    sget v0, Lcom/ifengyu/library/util/l;->a:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/library/util/l;->e()I

    move-result v0

    invoke-static {}, Lcom/ifengyu/library/util/l;->f()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/ifengyu/library/util/l;->f()I

    move-result v0

    :goto_0
    sput v0, Lcom/ifengyu/library/util/l;->a:I

    :cond_0
    sget v0, Lcom/ifengyu/library/util/l;->a:I

    return v0

    :cond_1
    invoke-static {}, Lcom/ifengyu/library/util/l;->e()I

    move-result v0

    goto :goto_0
.end method

.method public static i()I
    .locals 2

    invoke-static {}, Lcom/ifengyu/library/util/l;->h()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f266666    # 0.65f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic j()Landroid/widget/Toast;
    .locals 1

    sget-object v0, Lcom/ifengyu/library/util/l;->d:Landroid/widget/Toast;

    return-object v0
.end method

.method private static k()J
    .locals 2

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method private static l()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->n()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
