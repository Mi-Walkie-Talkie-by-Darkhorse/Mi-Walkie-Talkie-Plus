.class Lcom/qmuiteam/qmui/widget/QMUIProgressBar$a;
.super Ljava/lang/Object;
.source "QMUIProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/QMUIProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/widget/QMUIProgressBar;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/QMUIProgressBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar$a;->a:Lcom/qmuiteam/qmui/widget/QMUIProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar$a;->a:Lcom/qmuiteam/qmui/widget/QMUIProgressBar;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->a(Lcom/qmuiteam/qmui/widget/QMUIProgressBar;)Lcom/qmuiteam/qmui/widget/QMUIProgressBar$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar$a;->a:Lcom/qmuiteam/qmui/widget/QMUIProgressBar;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->a(Lcom/qmuiteam/qmui/widget/QMUIProgressBar;)Lcom/qmuiteam/qmui/widget/QMUIProgressBar$b;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar$a;->a:Lcom/qmuiteam/qmui/widget/QMUIProgressBar;

    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->b(Lcom/qmuiteam/qmui/widget/QMUIProgressBar;)I

    move-result v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUIProgressBar$a;->a:Lcom/qmuiteam/qmui/widget/QMUIProgressBar;

    invoke-static {v3}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar;->c(Lcom/qmuiteam/qmui/widget/QMUIProgressBar;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/qmuiteam/qmui/widget/QMUIProgressBar$b;->a(Lcom/qmuiteam/qmui/widget/QMUIProgressBar;II)V

    :cond_0
    return-void
.end method
