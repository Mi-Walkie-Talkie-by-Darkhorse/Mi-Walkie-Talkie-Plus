.class public Lcom/ifengyu/library/helper/QMUIStatusBarHelper;
.super Ljava/lang/Object;
.source "QMUIStatusBarHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/library/helper/QMUIStatusBarHelper$StatusBarType;
    }
.end annotation


# static fields
.field public static a:F

.field public static b:F

.field private static c:I

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a:F

    sput v0, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->b:F

    const/4 v0, -0x1

    sput v0, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->c:I

    const/4 v0, 0x0

    sput v0, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->d:I

    return-void
.end method

.method private static a(Landroid/view/Window;I)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/16 v2, 0x400

    invoke-static {p0, p1, v2}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/view/Window;II)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/view/Window;II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/view/Window;II)I

    move-result v0

    const/16 v1, 0x1000

    invoke-static {p0, v0, v1}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/view/Window;II)I

    move-result v0

    invoke-static {p0, v0, v2}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/view/Window;II)I

    move-result v0

    const/16 v1, 0x200

    invoke-static {p0, v0, v1}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/view/Window;II)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/Window;II)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    or-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 6
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 v5, 0x0

    const/high16 v4, -0x80000000

    const/high16 v3, 0x4000000

    invoke-static {}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ifengyu/library/helper/a;->h()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/ifengyu/library/helper/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4

    invoke-static {}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    invoke-static {}, Lcom/ifengyu/library/helper/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/library/helper/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/view/Window;Z)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_0
    const-string v3, "android.view.MiuiWindowManager$LayoutParams"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    const-string v4, "setExtraFlags"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v0

    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static b()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "essential"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/ifengyu/library/helper/a;->j()Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->d:I

    if-eqz v2, :cond_2

    sget v0, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->d:I

    invoke-static {p0, v0}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->b(Landroid/app/Activity;I)Z

    move-result v0

    goto :goto_0

    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    invoke-static {}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/view/Window;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    sput v1, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->d:I

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->b(Landroid/view/Window;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x2

    sput v0, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->d:I

    move v0, v1

    goto :goto_0

    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->c(Landroid/view/Window;Z)Z

    const/4 v0, 0x3

    sput v0, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->d:I

    move v0, v1

    goto :goto_0
.end method

.method private static b(Landroid/app/Activity;I)Z
    .locals 2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/view/Window;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->b(Landroid/view/Window;Z)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->c(Landroid/view/Window;Z)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/view/Window;Z)Z
    .locals 6

    const/4 v0, 0x1

    invoke-static {p0, p1}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->c(Landroid/view/Window;Z)Z

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v4, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-class v4, Landroid/view/WindowManager$LayoutParams;

    const-string v5, "meizuFlags"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    if-eqz p1, :cond_0

    or-int/2addr v2, v5

    :goto_0
    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    invoke-virtual {p0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v0

    :cond_0
    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v5

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static c()Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/ifengyu/library/helper/a;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/ifengyu/library/helper/a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ifengyu/library/helper/a;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ifengyu/library/helper/a;->e()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ifengyu/library/helper/a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/view/Window;Z)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/16 v0, 0x2000

    const/16 v1, 0x100

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/ifengyu/library/helper/a;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v3, -0x80000000

    invoke-virtual {p0, v3}, Landroid/view/Window;->addFlags(I)V

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    :goto_2
    invoke-static {p0, v0}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/view/Window;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
