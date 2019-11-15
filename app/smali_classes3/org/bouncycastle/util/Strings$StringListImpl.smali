.class Lorg/bouncycastle/util/Strings$StringListImpl;
.super Ljava/util/ArrayList;

# interfaces
.implements Lorg/bouncycastle/util/StringList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/util/Strings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringListImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lorg/bouncycastle/util/StringList;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/util/Strings$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/util/Strings$StringListImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/util/Strings$StringListImpl;->add(ILjava/lang/String;)V

    return-void
.end method

.method public add(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/util/Strings$StringListImpl;->add(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(I)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/util/Strings$StringListImpl;->set(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toStringArray()[Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/util/Strings$StringListImpl;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/util/Strings$StringListImpl;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public toStringArray(II)[Ljava/lang/String;
    .locals 4

    sub-int v0, p2, p1

    new-array v2, v0, [Ljava/lang/String;

    move v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/util/Strings$StringListImpl;->size()I

    move-result v0

    if-eq v1, v0, :cond_0

    if-eq v1, p2, :cond_0

    sub-int v3, v1, p1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/util/Strings$StringListImpl;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method
