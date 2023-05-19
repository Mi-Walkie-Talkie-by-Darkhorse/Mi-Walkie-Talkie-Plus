.class final Lb/a/a/a/a$a;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ld/a/b/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/a/b/a;Ld/a/b/a;)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Ld/a/a/a;->getStart()I

    move-result v0

    invoke-virtual {p2}, Ld/a/a/a;->getStart()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v0, v1, :cond_2

    .line 2
    invoke-virtual {p1}, Ld/a/a/a;->a()I

    move-result v0

    invoke-virtual {p2}, Ld/a/a/a;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ld/a/a/a;->a()I

    move-result p1

    invoke-virtual {p2}, Ld/a/a/a;->a()I

    move-result p2

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 3
    :cond_2
    invoke-virtual {p1}, Ld/a/a/a;->getStart()I

    move-result v0

    invoke-virtual {p2}, Ld/a/a/a;->getStart()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v2, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ld/a/a/a;->getStart()I

    move-result p1

    invoke-virtual {p2}, Ld/a/a/a;->getStart()I

    move-result p2

    if-ne p1, p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ld/a/b/a;

    check-cast p2, Ld/a/b/a;

    invoke-virtual {p0, p1, p2}, Lb/a/a/a/a$a;->a(Ld/a/b/a;Ld/a/b/a;)I

    move-result p1

    return p1
.end method
