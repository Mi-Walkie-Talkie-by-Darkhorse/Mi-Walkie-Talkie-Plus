.class Lcom/qmuiteam/qmui/arch/b$d;
.super Ljava/lang/Object;
.source "QMUIFragment.java"

# interfaces
.implements Lcom/qmuiteam/qmui/arch/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/arch/b;->x2(Lcom/qmuiteam/qmui/arch/b;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/qmuiteam/qmui/arch/b$h;

.field final synthetic c:Lcom/qmuiteam/qmui/arch/b;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/arch/b;ZLcom/qmuiteam/qmui/arch/b$h;Lcom/qmuiteam/qmui/arch/b;)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/qmuiteam/qmui/arch/b$d;->a:Z

    iput-object p3, p0, Lcom/qmuiteam/qmui/arch/b$d;->b:Lcom/qmuiteam/qmui/arch/b$h;

    iput-object p4, p0, Lcom/qmuiteam/qmui/arch/b$d;->c:Lcom/qmuiteam/qmui/arch/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b$d;->c:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/qmuiteam/qmui/arch/g;->i(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/arch/b$d;->a:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1}, Lcom/qmuiteam/qmui/arch/g;->l(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/b$d;->b:Lcom/qmuiteam/qmui/arch/b$h;

    iget v2, v2, Lcom/qmuiteam/qmui/arch/b$h;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    invoke-static {p1}, Lcom/qmuiteam/qmui/arch/g;->m(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 10
    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/b$d;->b:Lcom/qmuiteam/qmui/arch/b$h;

    iget v2, v2, Lcom/qmuiteam/qmui/arch/b$h;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/qmuiteam/qmui/arch/g;->k(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/qmuiteam/qmui/arch/b$d;->c:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    const-class p1, Landroidx/fragment/app/Fragment;

    const-string v0, "mBackStackNesting"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 17
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 18
    iget-object v3, p0, Lcom/qmuiteam/qmui/arch/b$d;->c:Lcom/qmuiteam/qmui/arch/b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
