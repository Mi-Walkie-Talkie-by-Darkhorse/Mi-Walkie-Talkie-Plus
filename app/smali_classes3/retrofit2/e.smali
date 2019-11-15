.class final Lretrofit2/e;
.super Lretrofit2/c$a;
.source "DefaultCallAdapterFactory.java"


# static fields
.field static final a:Lretrofit2/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lretrofit2/e;

    invoke-direct {v0}, Lretrofit2/e;-><init>()V

    sput-object v0, Lretrofit2/e;->a:Lretrofit2/c$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lretrofit2/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/l;)Lretrofit2/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/l;",
            ")",
            "Lretrofit2/c",
            "<**>;"
        }
    .end annotation

    invoke-static {p1}, Lretrofit2/e;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lretrofit2/b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lretrofit2/n;->e(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v0, Lretrofit2/e$1;

    invoke-direct {v0, p0, v1}, Lretrofit2/e$1;-><init>(Lretrofit2/e;Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method
