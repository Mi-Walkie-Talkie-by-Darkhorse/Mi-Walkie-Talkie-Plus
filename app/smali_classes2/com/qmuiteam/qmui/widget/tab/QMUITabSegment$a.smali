.class Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$a;
.super Ljava/lang/Object;
.source "QMUITabSegment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private final b:Z

.field final synthetic c:Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$a;->c:Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$a;->b:Z

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$a;->a:Z

    return-void
.end method

.method public onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/a;Landroidx/viewpager/widget/a;)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/viewpager/widget/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/viewpager/widget/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$a;->c:Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;

    invoke-static {p2}, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->a(Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p2

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$a;->c:Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;

    iget-boolean p2, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$a;->b:Z

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment$a;->a:Z

    invoke-virtual {p1, p3, p2, v0}, Lcom/qmuiteam/qmui/widget/tab/QMUITabSegment;->a(Landroidx/viewpager/widget/a;ZZ)V

    :cond_0
    return-void
.end method
