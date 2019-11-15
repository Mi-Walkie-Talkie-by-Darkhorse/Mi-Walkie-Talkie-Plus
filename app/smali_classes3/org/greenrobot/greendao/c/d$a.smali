.class final Lorg/greenrobot/greendao/c/d$a;
.super Lorg/greenrobot/greendao/c/b;
.source "DeleteQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/greendao/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/c/b",
        "<TT2;",
        "Lorg/greenrobot/greendao/c/d",
        "<TT2;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/greenrobot/greendao/a;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/a",
            "<TT2;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/greenrobot/greendao/c/b;-><init>(Lorg/greenrobot/greendao/a;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/greenrobot/greendao/a;Ljava/lang/String;[Ljava/lang/String;Lorg/greenrobot/greendao/c/d$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/greenrobot/greendao/c/d$a;-><init>(Lorg/greenrobot/greendao/a;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected synthetic b()Lorg/greenrobot/greendao/c/a;
    .locals 1

    invoke-virtual {p0}, Lorg/greenrobot/greendao/c/d$a;->d()Lorg/greenrobot/greendao/c/d;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lorg/greenrobot/greendao/c/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/c/d",
            "<TT2;>;"
        }
    .end annotation

    new-instance v0, Lorg/greenrobot/greendao/c/d;

    iget-object v2, p0, Lorg/greenrobot/greendao/c/d$a;->b:Lorg/greenrobot/greendao/a;

    iget-object v3, p0, Lorg/greenrobot/greendao/c/d$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lorg/greenrobot/greendao/c/d$a;->c:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/c/d;-><init>(Lorg/greenrobot/greendao/c/d$a;Lorg/greenrobot/greendao/a;Ljava/lang/String;[Ljava/lang/String;Lorg/greenrobot/greendao/c/d$1;)V

    return-object v0
.end method
