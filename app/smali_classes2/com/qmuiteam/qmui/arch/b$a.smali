.class Lcom/qmuiteam/qmui/arch/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/arch/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/arch/b;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/arch/b;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/b$a;->a:Lcom/qmuiteam/qmui/arch/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b$a;->a:Lcom/qmuiteam/qmui/arch/b;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b$a;->a:Lcom/qmuiteam/qmui/arch/b;

    invoke-static {v0}, Lcom/qmuiteam/qmui/arch/b;->b(Lcom/qmuiteam/qmui/arch/b;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b$a;->a:Lcom/qmuiteam/qmui/arch/b;

    invoke-static {v0}, Lcom/qmuiteam/qmui/arch/b;->b(Lcom/qmuiteam/qmui/arch/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/b$a;->a:Lcom/qmuiteam/qmui/arch/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/arch/b;->a(Lcom/qmuiteam/qmui/arch/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_1
    return-void
.end method
