.class Landroidx/constraintlayout/motion/widget/g$a;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/motion/widget/g;->c(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/constraintlayout/motion/widget/g$p;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/constraintlayout/motion/widget/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/motion/widget/g$p;Landroidx/constraintlayout/motion/widget/g$p;)I
    .locals 0

    .line 1
    iget p1, p1, Landroidx/constraintlayout/motion/widget/g$p;->a:I

    iget p2, p2, Landroidx/constraintlayout/motion/widget/g$p;->a:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/constraintlayout/motion/widget/g$p;

    check-cast p2, Landroidx/constraintlayout/motion/widget/g$p;

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/g$a;->a(Landroidx/constraintlayout/motion/widget/g$p;Landroidx/constraintlayout/motion/widget/g$p;)I

    move-result p1

    return p1
.end method
