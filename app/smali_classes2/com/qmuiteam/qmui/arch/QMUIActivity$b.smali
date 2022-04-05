.class Lcom/qmuiteam/qmui/arch/QMUIActivity$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qmuiteam/qmui/arch/SwipeBackLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/arch/QMUIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/arch/QMUIActivity;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/arch/QMUIActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$b;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;FFFFF)I
    .locals 8

    invoke-static {}, Lcom/qmuiteam/qmui/arch/f;->b()Lcom/qmuiteam/qmui/arch/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/arch/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$b;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->a(Lcom/qmuiteam/qmui/arch/SwipeBackLayout;Lcom/qmuiteam/qmui/arch/SwipeBackLayout$f;FFFFF)I

    move-result p1

    return p1
.end method
