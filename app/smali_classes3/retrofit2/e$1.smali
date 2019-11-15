.class Lretrofit2/e$1;
.super Ljava/lang/Object;
.source "DefaultCallAdapterFactory.java"

# interfaces
.implements Lretrofit2/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/e;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/l;)Lretrofit2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/c",
        "<",
        "Ljava/lang/Object;",
        "Lretrofit2/b",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Type;

.field final synthetic b:Lretrofit2/e;


# direct methods
.method constructor <init>(Lretrofit2/e;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/e$1;->b:Lretrofit2/e;

    iput-object p2, p0, Lretrofit2/e$1;->a:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lretrofit2/b;)Lretrofit2/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/b",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/b",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public synthetic adapt(Lretrofit2/b;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lretrofit2/e$1;->a(Lretrofit2/b;)Lretrofit2/b;

    move-result-object v0

    return-object v0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lretrofit2/e$1;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method
