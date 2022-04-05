.class Lcom/qmuiteam/qmui/arch/SwipeBackLayout$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/arch/SwipeBackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/arch/SwipeBackLayout;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$a;->a:Lcom/qmuiteam/qmui/arch/SwipeBackLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/SwipeBackLayout$a;->a:Lcom/qmuiteam/qmui/arch/SwipeBackLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->setDragState(I)V

    return-void
.end method
