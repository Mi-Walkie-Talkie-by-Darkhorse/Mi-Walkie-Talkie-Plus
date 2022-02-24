.class La/a/a/b/b$a;
.super La/a/a/b/b$e;
.source "SafeIterableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "La/a/a/b/b$e<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(La/a/a/b/b$c;La/a/a/b/b$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/b/b$c<",
            "TK;TV;>;",
            "La/a/a/b/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, La/a/a/b/b$e;-><init>(La/a/a/b/b$c;La/a/a/b/b$c;)V

    return-void
.end method


# virtual methods
.method b(La/a/a/b/b$c;)La/a/a/b/b$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/b/b$c<",
            "TK;TV;>;)",
            "La/a/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, La/a/a/b/b$c;->d:La/a/a/b/b$c;

    return-object p1
.end method

.method c(La/a/a/b/b$c;)La/a/a/b/b$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/b/b$c<",
            "TK;TV;>;)",
            "La/a/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, La/a/a/b/b$c;->c:La/a/a/b/b$c;

    return-object p1
.end method
