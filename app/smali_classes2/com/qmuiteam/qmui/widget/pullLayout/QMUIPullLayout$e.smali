.class public Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$e;
.super Ljava/lang/Object;
.source "QMUIPullLayout.java"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field private static a:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$e;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$e;
    .locals 1

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$e;->a:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$e;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$e;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$e;->a:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$e;

    .line 3
    :cond_0
    sget-object v0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$e;->a:Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$e;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_0
    return-void
.end method
