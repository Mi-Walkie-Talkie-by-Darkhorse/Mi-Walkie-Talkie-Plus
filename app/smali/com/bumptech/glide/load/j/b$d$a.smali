.class Lcom/bumptech/glide/load/j/b$d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/j/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/j/b$d;->a(Lcom/bumptech/glide/load/j/r;)Lcom/bumptech/glide/load/j/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/j/b$b<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/j/b$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public bridge synthetic a([B)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/j/b$d$a;->a([B)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
