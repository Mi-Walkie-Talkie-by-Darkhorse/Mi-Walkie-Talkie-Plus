.class public Lcom/bumptech/glide/load/j/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/j/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/j/v$a;,
        Lcom/bumptech/glide/load/j/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/j/n<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/j/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/j/v<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/j/v;

    invoke-direct {v0}, Lcom/bumptech/glide/load/j/v;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/j/v;->a:Lcom/bumptech/glide/load/j/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bumptech/glide/load/j/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/j/v<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/j/v;->a:Lcom/bumptech/glide/load/j/v;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/j/n$a;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/bumptech/glide/load/e;",
            ")",
            "Lcom/bumptech/glide/load/j/n$a<",
            "TModel;>;"
        }
    .end annotation

    new-instance p2, Lcom/bumptech/glide/load/j/n$a;

    new-instance p3, Lcom/bumptech/glide/l/b;

    invoke-direct {p3, p1}, Lcom/bumptech/glide/l/b;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/bumptech/glide/load/j/v$b;

    invoke-direct {p4, p1}, Lcom/bumptech/glide/load/j/v$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/j/n$a;-><init>(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/i/d;)V

    return-object p2
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
