.class Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/DefaultItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p2, p0, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    iput p3, p0, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    iput p4, p0, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->toX:I

    iput p5, p0, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->toY:I

    return-void
.end method
