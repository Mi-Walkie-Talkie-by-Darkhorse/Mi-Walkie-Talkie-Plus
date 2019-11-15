.class public final Lcom/bumptech/glide/load/d;
.super Ljava/lang/Object;
.source "Option.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d$a",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private volatile e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/d$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/d;->a:Lcom/bumptech/glide/load/d$a;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/d$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/bumptech/glide/load/d$a",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/d;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/bumptech/glide/load/d;->b:Ljava/lang/Object;

    invoke-static {p3}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/d$a;

    iput-object v0, p0, Lcom/bumptech/glide/load/d;->c:Lcom/bumptech/glide/load/d$a;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bumptech/glide/load/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/load/d",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/d;

    const/4 v1, 0x0

    invoke-static {}, Lcom/bumptech/glide/load/d;->c()Lcom/bumptech/glide/load/d$a;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/bumptech/glide/load/d;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/d$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/bumptech/glide/load/d",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/d;

    invoke-static {}, Lcom/bumptech/glide/load/d;->c()Lcom/bumptech/glide/load/d$a;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/bumptech/glide/load/d;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/d$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/d$a;)Lcom/bumptech/glide/load/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/bumptech/glide/load/d$a",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/d",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/d;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/d$a;)V

    return-object v0
.end method

.method private b()[B
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d;->e:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/d;->d:Ljava/lang/String;

    sget-object v1, Lcom/bumptech/glide/load/c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/d;->e:[B

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/d;->e:[B

    return-object v0
.end method

.method private static c()Lcom/bumptech/glide/load/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/d$a",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/d;->a:Lcom/bumptech/glide/load/d$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/d;->c:Lcom/bumptech/glide/load/d$a;

    invoke-direct {p0}, Lcom/bumptech/glide/load/d;->b()[B

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/bumptech/glide/load/d$a;->a([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/bumptech/glide/load/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/load/d;

    iget-object v0, p0, Lcom/bumptech/glide/load/d;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/bumptech/glide/load/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/d;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Option{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
