.class Lcom/qmuiteam/qmui/arch/b$f$c;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/arch/b$f;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/a/c/a<",
        "Landroid/view/View;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/arch/b$f;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/arch/b$f;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/b$f$c;->a:Lcom/qmuiteam/qmui/arch/b$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/Void;
    .locals 6

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b$f$c;->a:Lcom/qmuiteam/qmui/arch/b$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/arch/b$f;->a(Lcom/qmuiteam/qmui/arch/b$f;)Lcom/qmuiteam/qmui/arch/b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b$f$c;->a:Lcom/qmuiteam/qmui/arch/b$f;

    invoke-static {v0}, Lcom/qmuiteam/qmui/arch/b$f;->a(Lcom/qmuiteam/qmui/arch/b$f;)Lcom/qmuiteam/qmui/arch/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    instance-of v4, v3, Lcom/qmuiteam/qmui/arch/b;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/qmuiteam/qmui/arch/b;

    const-class v4, Landroidx/fragment/app/Fragment;

    const-string v5, "mContainerId"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_1

    if-eq v2, v3, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/qmuiteam/qmui/arch/b$f$c;->a:Lcom/qmuiteam/qmui/arch/b$f;

    invoke-static {v4, v2, v1}, Lcom/qmuiteam/qmui/arch/b$f;->a(Lcom/qmuiteam/qmui/arch/b$f;Landroid/view/ViewGroup;La/a/a/c/a;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/arch/b$f$c;->a(Landroid/view/View;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
