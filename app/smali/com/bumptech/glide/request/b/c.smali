.class public Lcom/bumptech/glide/request/b/c;
.super Ljava/lang/Object;
.source "NoTransition.java"

# interfaces
.implements Lcom/bumptech/glide/request/b/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/b/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/b/d",
        "<TR;>;"
    }
.end annotation


# static fields
.field static final a:Lcom/bumptech/glide/request/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/b/c",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/bumptech/glide/request/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/b/e",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/request/b/c;

    invoke-direct {v0}, Lcom/bumptech/glide/request/b/c;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/b/c;->a:Lcom/bumptech/glide/request/b/c;

    new-instance v0, Lcom/bumptech/glide/request/b/c$a;

    invoke-direct {v0}, Lcom/bumptech/glide/request/b/c$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/b/c;->b:Lcom/bumptech/glide/request/b/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bumptech/glide/request/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/request/b/e",
            "<TR;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/request/b/c;->b:Lcom/bumptech/glide/request/b/e;

    return-object v0
.end method

.method public static b()Lcom/bumptech/glide/request/b/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/request/b/d",
            "<TR;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/request/b/c;->a:Lcom/bumptech/glide/request/b/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/request/b/d$a;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
