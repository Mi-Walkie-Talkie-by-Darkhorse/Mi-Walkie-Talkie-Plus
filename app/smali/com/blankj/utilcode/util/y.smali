.class Lcom/blankj/utilcode/util/y;
.super Ljava/lang/Object;
.source "UtilsBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/y$a;
    }
.end annotation


# direct methods
.method private static varargs A([Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static B(Lcom/blankj/utilcode/util/w$a;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/x;->g:Lcom/blankj/utilcode/util/x;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/x;->s(Lcom/blankj/utilcode/util/w$a;)V

    return-void
.end method

.method static C(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method static D(Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ThreadUtils;->f(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static E(Landroid/app/Application;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/x;->g:Lcom/blankj/utilcode/util/x;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/x;->w(Landroid/app/Application;)V

    return-void
.end method

.method static F(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/i;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static G(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/f;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static a(Lcom/blankj/utilcode/util/w$a;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/x;->g:Lcom/blankj/utilcode/util/x;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/x;->d(Lcom/blankj/utilcode/util/w$a;)V

    return-void
.end method

.method static addOnAppStatusChangedListener(Lcom/blankj/utilcode/util/w$c;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/x;->g:Lcom/blankj/utilcode/util/x;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/x;->addOnAppStatusChangedListener(Lcom/blankj/utilcode/util/w$c;)V

    return-void
.end method

.method static b(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/g;->a(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static c(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/g;->b(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static d(F)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/t;->a(F)I

    move-result p0

    return p0
.end method

.method static e(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/k;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/x;->g:Lcom/blankj/utilcode/util/x;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/x;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static h()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/s;->a()I

    move-result v0

    return v0
.end method

.method static i()Landroid/app/Application;
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/x;->g:Lcom/blankj/utilcode/util/x;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/x;->m()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method static j()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/o;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static k(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/g;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static l(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/v;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static m()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/h;->g()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method static n()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/d;->a()I

    move-result v0

    return v0
.end method

.method static o(Lcom/blankj/utilcode/util/NotificationUtils$a;Lcom/blankj/utilcode/util/w$b;)Landroid/app/Notification;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/NotificationUtils$a;",
            "Lcom/blankj/utilcode/util/w$b<",
            "Landroidx/core/app/NotificationCompat$b;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/NotificationUtils;->a(Lcom/blankj/utilcode/util/NotificationUtils$a;Lcom/blankj/utilcode/util/w$b;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static p()Lcom/blankj/utilcode/util/r;
    .locals 1

    const-string v0, "Utils"

    .line 1
    invoke-static {v0}, Lcom/blankj/utilcode/util/r;->a(Ljava/lang/String;)Lcom/blankj/utilcode/util/r;

    move-result-object v0

    return-object v0
.end method

.method static q()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/d;->b()I

    move-result v0

    return v0
.end method

.method static r(Landroid/app/Application;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/x;->g:Lcom/blankj/utilcode/util/x;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/x;->n(Landroid/app/Application;)V

    return-void
.end method

.method static removeOnAppStatusChangedListener(Lcom/blankj/utilcode/util/w$c;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/x;->g:Lcom/blankj/utilcode/util/x;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/x;->removeOnAppStatusChangedListener(Lcom/blankj/utilcode/util/w$c;)V

    return-void
.end method

.method static s(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/a;->a(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method static t()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/x;->g:Lcom/blankj/utilcode/util/x;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/x;->o()Z

    move-result v0

    return v0
.end method

.method static u()Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/m;->a()Z

    move-result v0

    return v0
.end method

.method static v()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/z;->a()Z

    move-result v0

    return v0
.end method

.method static w()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/q;->a()Z

    move-result v0

    return v0
.end method

.method static x(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/u;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static y(I)Landroid/view/View;
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/z;->b(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static z()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Runnable;

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/b;->f()Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/blankj/utilcode/util/y;->A([Ljava/lang/Runnable;)V

    return-void
.end method
