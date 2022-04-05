.class Landroidx/constraintlayout/solver/d$b;
.super Landroidx/constraintlayout/solver/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/d;Landroidx/constraintlayout/solver/c;)V
    .locals 0

    invoke-direct {p0}, Landroidx/constraintlayout/solver/b;-><init>()V

    new-instance p1, Landroidx/constraintlayout/solver/i;

    invoke-direct {p1, p0, p2}, Landroidx/constraintlayout/solver/i;-><init>(Landroidx/constraintlayout/solver/b;Landroidx/constraintlayout/solver/c;)V

    iput-object p1, p0, Landroidx/constraintlayout/solver/b;->e:Landroidx/constraintlayout/solver/b$a;

    return-void
.end method
