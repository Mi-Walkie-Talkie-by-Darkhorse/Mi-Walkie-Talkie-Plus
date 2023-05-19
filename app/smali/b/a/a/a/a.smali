.class final Lb/a/a/a/a;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/a/a$a;
    }
.end annotation


# static fields
.field static final a:Lb/a/a/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb/a/a/a/a$a;

    invoke-direct {v0}, Lb/a/a/a/a$a;-><init>()V

    sput-object v0, Lb/a/a/a/a;->a:Lb/a/a/a/a$a;

    return-void
.end method

.method static a(Ljava/lang/String;Ld/a/b/b;Ljava/util/List;Ljava/lang/String;Lb/a/a/a/g;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ld/a/b/b;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lb/a/a/a/g;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_2

    if-nez p4, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1, p0}, Ld/a/b/b;->a(Ljava/lang/CharSequence;)Ljava/util/Collection;

    const/4 p0, 0x0

    throw p0

    .line 3
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 p2, 0x0

    .line 4
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p4

    if-ge p2, p4, :cond_4

    .line 5
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p4

    invoke-static {p4}, Lb/a/a/a/b;->d(C)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    if-eq p2, p4, :cond_3

    .line 7
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    :goto_2
    return-object p0
.end method
