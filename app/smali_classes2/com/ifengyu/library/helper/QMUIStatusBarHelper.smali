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
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Landroid/view/Window;I)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/16 v0, 0x400

    .line 15
    invoke-static {p0, p1, v0}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/view/Window;II)I

    move-result p1

    const/4 v1, 0x4

    .line 16
    invoke-static {p0, p1, v1}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/view/Window;II)I

    move-result p1

    const/4 v1, 0x2

    .line 17
    invoke-static {p0, p1, v1}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/view/Window;II)I

    move-result p1

    const/16 v1, 0x1000

    .line 18
    invoke-static {p0, p1, v1}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/view/Window;II)I

    move-result p1

    .line 19
    invoke-static {p0, p1, v0}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/view/Window;II)I

    move-result p1

    const/16 v0, 0x200

    .line 20
    invoke-static {p0, p1, v0}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/view/Window;II)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/view/Window;II)I
    .locals 0

    .line 21
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_0

    or-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private static a()Z
    .locals 3

    .line 28
    invoke-static {}, Lcom/ifengyu/library/helper/a;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 29
    :cond_0
    invoke-static {}, Lcom/ifengyu/library/helper/a;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/ifengyu/library/helper/a;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 30
    invoke-static {}, Lcom/ifengyu/library/helper/a;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/ifengyu/library/helper/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {}, Lcom/ifengyu/library/helper/a;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 2
    :cond_1
    sget v1, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a:I

    if-eqz v1, :cond_2

    .line 3
    invoke-static {p0, v1}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/app/Activity;I)Z

    move-result p0

    return p0

    .line 4
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_5

    .line 5
    invoke-static {}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->c(Landroid/view/Window;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    sput v2, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a:I

    return v2

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->b(Landroid/view/Window;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p0, 0x2

    .line 8
    sput p0, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a:I

    return v2

    .line 9
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_5

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/view/Window;Z)Z

    const/4 p0, 0x3

    .line 11
    sput p0, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a:I

    return v2

    :cond_5
    return v0
.end method

.method private static a(Landroid/app/Activity;I)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->c(Landroid/view/Window;Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->b(Landroid/view/Window;Z)Z

    move-result p0

    return p0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/view/Window;Z)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/view/Window;Z)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 22
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 23
    invoke-static {}, Lcom/ifengyu/library/helper/a;->g()Z

    move-result v1

    const/16 v2, 0x2000

    const/16 v3, 0x100

    if-eqz v1, :cond_1

    const/high16 v1, -0x80000000

    .line 24
    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x100

    .line 25
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x100

    .line 26
    :goto_1
    invoke-static {p0, v2}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/view/Window;I)I

    move-result p0

    .line 27
    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 1
    invoke-static {p0, v0}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->b(Landroid/app/Activity;I)V

    return-void
.end method

.method public static b(Landroid/app/Activity;I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 4
    invoke-static {}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->b()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/ifengyu/library/helper/a;->h()Z

    move-result p1

    const/high16 v0, 0x4000000

    if-nez p1, :cond_5

    invoke-static {}, Lcom/ifengyu/library/helper/a;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x500

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    if-lt p1, v1, :cond_2

    invoke-static {}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 11
    invoke-virtual {p0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 12
    invoke-virtual {p0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 14
    invoke-virtual {p0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 15
    invoke-virtual {p0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x13

    if-lt p1, v1, :cond_4

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 17
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    :goto_0
    return-void

    .line 18
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 19
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method private static b()Z
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "essential"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b(Landroid/view/Window;Z)Z
    .locals 5

    .line 20
    invoke-static {p0, p1}, Lcom/ifengyu/library/helper/QMUIStatusBarHelper;->a(Landroid/view/Window;Z)Z

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 21
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 22
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 24
    const-class v3, Landroid/view/WindowManager$LayoutParams;

    const-string v4, "meizuFlags"

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    .line 28
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-eqz p1, :cond_0

    or-int p1, v4, v2

    goto :goto_0

    :cond_0
    not-int p1, v2

    and-int/2addr p1, v4

    .line 30
    :goto_0
    invoke-virtual {v3, v1, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 31
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static c()Z
    .locals 1

    .line 8
    invoke-static {}, Lcom/ifengyu/library/helper/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/library/helper/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static c(Landroid/view/Window;Z)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_0
    const-string v3, "android.view.MiuiWindowManager$LayoutParams"

    .line 2
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    .line 3
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 4
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    const-string v4, "setExtraFlags"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    .line 5
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz p1, :cond_0

    new-array p1, v5, [Ljava/lang/Object;

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-array p1, v5, [Ljava/lang/Object;

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
