.class abstract Lorg/greenrobot/greendao/c/c;
.super Lorg/greenrobot/greendao/c/a;
.source "AbstractQueryWithLimit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/c/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final f:I

.field protected final g:I


# direct methods
.method protected constructor <init>(Lorg/greenrobot/greendao/a;Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/a",
            "<TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/greenrobot/greendao/c/a;-><init>(Lorg/greenrobot/greendao/a;Ljava/lang/String;[Ljava/lang/String;)V

    iput p4, p0, Lorg/greenrobot/greendao/c/c;->f:I

    iput p5, p0, Lorg/greenrobot/greendao/c/c;->g:I

    return-void
.end method
