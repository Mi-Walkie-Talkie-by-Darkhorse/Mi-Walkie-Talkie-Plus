.class Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;
.super Landroid/view/View;
.source "SwipeBackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->b:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/app/Activity;Z)V
    .locals 12

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->b:Z

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    instance-of v1, p2, Lcom/qmuiteam/qmui/arch/a;

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 9
    check-cast p2, Lcom/qmuiteam/qmui/arch/a;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/arch/a;->i()V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 11
    :cond_2
    :goto_0
    iput-boolean v3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->b:Z

    :cond_3
    const/4 p2, 0x0

    const v1, 0x1020002

    if-nez p3, :cond_5

    .line 12
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 13
    iget-object p3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    if-nez p3, :cond_4

    .line 14
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    .line 15
    :cond_4
    iget-object p3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;

    invoke-direct {v0, p1, p2, v3}, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;-><init>(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Z)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 17
    :cond_5
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p3

    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "mGlobal"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mViews"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 22
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mParams"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 24
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 25
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 26
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 27
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_1
    if-ltz v4, :cond_7

    .line 28
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 29
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 30
    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-ne v7, p3, :cond_6

    .line 31
    iget-object v4, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2

    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_7
    move-object v4, p2

    :goto_2
    if-eqz v4, :cond_d

    .line 32
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    :goto_3
    if-ltz v6, :cond_d

    .line 33
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 34
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 35
    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    if-ne v9, p3, :cond_8

    const/4 v9, 0x1

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    :goto_4
    if-nez v9, :cond_9

    .line 36
    iget-object v10, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eq v10, v4, :cond_9

    iget-object v10, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v10, p3, :cond_c

    .line 37
    :cond_9
    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 38
    iget-object v11, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    if-nez v11, :cond_a

    .line 39
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    :cond_a
    if-eqz v10, :cond_b

    .line 40
    iget-object v8, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    new-instance v11, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;

    invoke-direct {v11, v10, v7, v9}, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;-><init>(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Z)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 41
    :cond_b
    iget-object v10, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    new-instance v11, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;

    invoke-direct {v11, v8, v7, v9}, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;-><init>(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Z)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 42
    :cond_d
    iget-object p3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    if-eqz p3, :cond_e

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_15

    .line 43
    :cond_e
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 44
    iget-object p3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    if-nez p3, :cond_f

    .line 45
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    .line 46
    :cond_f
    iget-object p3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;

    invoke-direct {v0, p1, p2, v3}, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;-><init>(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Z)V

    goto :goto_6

    :catchall_0
    move-exception p3

    .line 47
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 48
    :cond_10
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_11

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    .line 51
    :cond_11
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;

    invoke-direct {v1, p1, p2, v3}, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;-><init>(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_12
    throw p3

    :catch_0
    nop

    .line 53
    iget-object p3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    if-eqz p3, :cond_13

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_15

    .line 54
    :cond_13
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 55
    iget-object p3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    if-nez p3, :cond_14

    .line 56
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    .line 57
    :cond_14
    iget-object p3, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;

    invoke-direct {v0, p1, p2, v3}, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;-><init>(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Z)V

    :goto_6
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method a()Z
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->b:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->b:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 5
    invoke-virtual {p1, v0, v1, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;

    invoke-virtual {v1, p1}, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView$a;->a(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
