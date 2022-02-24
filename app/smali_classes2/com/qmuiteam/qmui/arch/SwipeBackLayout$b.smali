.class Lcom/qmuiteam/qmui/arch/SwipeBackLayout$b;
.super Ljava/lang/Object;
.source "SwipeBackLayout.java"

# interfaces
.implements Lcom/qmuiteam/qmui/arch/SwipeBackLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;)Lcom/qmuiteam/qmui/arch/SwipeBackLayout$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;

.field final synthetic b:Lcom/qmuiteam/qmui/arch/SwipeBackLayout;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$b;->b:Lcom/qmuiteam/qmui/arch/SwipeBackLayout;

    iput-object p2, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$b;->a:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$b;->b:Lcom/qmuiteam/qmui/arch/SwipeBackLayout;

    invoke-static {v0}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$b;->a:Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
