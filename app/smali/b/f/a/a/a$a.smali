.class Lb/f/a/a/a$a;
.super Ljava/lang/Object;
.source "CommonAdapter.java"

# interfaces
.implements Lb/f/a/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/f/a/a/a;-><init>(Landroid/content/Context;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/f/a/a/c/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lb/f/a/a/a;


# direct methods
.method constructor <init>(Lb/f/a/a/a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/f/a/a/a$a;->b:Lb/f/a/a/a;

    iput p2, p0, Lb/f/a/a/a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lb/f/a/a/a$a;->a:I

    return v0
.end method

.method public c(Lb/f/a/a/c/c;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/f/a/a/c/c;",
            "TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/f/a/a/a$a;->b:Lb/f/a/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lb/f/a/a/a;->m(Lb/f/a/a/c/c;Ljava/lang/Object;I)V

    return-void
.end method
