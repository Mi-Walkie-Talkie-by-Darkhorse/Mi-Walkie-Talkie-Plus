.class public Lb/b/b/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lb/b/b/a/f/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/b/b/a/f/b<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/b/b/a/f/b;

    invoke-direct {v0}, Lb/b/b/a/f/b;-><init>()V

    iput-object v0, p0, Lb/b/b/a/c;->a:Lb/b/b/a/f/b;

    return-void
.end method


# virtual methods
.method public a()Lb/b/b/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/b/b/a/b<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/b/a/c;->a:Lb/b/b/a/f/b;

    return-object v0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lb/b/b/a/c;->a:Lb/b/b/a/f/b;

    invoke-virtual {v0, p1}, Lb/b/b/a/f/b;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/b/b/a/c;->a:Lb/b/b/a/f/b;

    invoke-virtual {v0, p1}, Lb/b/b/a/f/b;->b(Ljava/lang/Object;)V

    return-void
.end method
